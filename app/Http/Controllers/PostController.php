<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use App\Models\CategoriesPost;
use App\Models\User;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Models\Comments;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin.post.list', [
            'posts' => Post::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = CategoriesPost::all();
        $users = User::all();
        return view('admin.post.create', [
            'categories' => $categories,
            'users' => $users
        ]);

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $post = new Post();
        $post->title = $request->title;
        $post->content = $request->content;
        $post->category_id = $request->category_id;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $fileName = $file->getClientOriginalName();
            $destinationPath = public_path('/store');
            $file->move($destinationPath, $fileName);
            $post->image = $fileName;
        }
        $post->description = $request->description;
        $post->slug = Str::slug($request->title);
        $post->user_id = $request->user_id;
        $checked = $request->input('hot');
        if ($checked == 'on') {
            $post->highlight = 1;
        } else {
            $post->highlight = 0;
        }
        $user_time = Carbon::now();
        // check if user time versus post time is less than 1 day
        if ($user_time->diffInDays($post->created_at) < 1) {
            $post->new_post = 1;
        } else {
            $post->new_post = 0;
        }

        $post->save();


        return redirect()->route('admin.posts.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);

        //
        $categories = CategoriesPost::all();
        $users = User::all();
        return view('admin.post.edit', [
            'post' => $post,
            'category' => $categories,
            'users' => $users
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $post = Post::find($id);
        $post->title = $request->title;
        $post->content = $request->content;
        $post->category_id = $request->category_id;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $fileName = $file->getClientOriginalName();
            $destinationPath = public_path('/store');
            $file->move($destinationPath, $fileName);
            $post->image = $fileName;
        }
        $post->description = $request->description;
        $post->slug = Str::slug($request->title);
        $post->user_id = $request->user_id;
        $checked = $request->input('hot');
        if ($checked == 'on') {
            $post->highlight = 1;
        } else {
            $post->highlight = 0;
        }
        $user_time = Carbon::now();
        // check if user time versus post time is less than 1 day
        if ($user_time->diffInDays($post->created_at) < 1) {
            $post->new_post = 1;
        } else {
            $post->new_post = 0;
        }


        $post->save();
        return redirect()->route('admin.posts.index');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $post = Post::find($id);
        $post->delete();
        if(auth()->user()->role == 'admin'){
            return redirect()->route('admin.posts.index');}
        return redirect()->route('client.post.show');
    }
    public function showPostFollowName()
    {
        $name = auth()->user()->name;
        $id = auth()->user()->id;
        // $posts=Post::where('user_id',$id)->get();
        //$posts=Post::where(user->name, $name)->get();
        $posts = Post::where('user_id', $id)->whereHas('user', function ($q) use ($name) {
            $q->where('name', 'like', '%' . $name . '%');
        })->get();
        return view('client.post.post', [
            'posts' => $posts
        ]);
    }
    public function showDetail($id)
    {
        $post = Post::find($id);
        $post->number_views++;
        $post->save();
        return view('client.post.detail', [
            'post' => $post
        ]);
    }
    //filter post by category
    public function fillterByCat($slug)
    {
        $category = CategoriesPost::where('slug', $slug)->first();
        $posts = Post::where('category_id', $category->id)->paginate(5);
        return view('client.post.filter', [
            'posts' => $posts
        ]);
    }
    public function storeComment(Request $request, $id)
    {
        $post = Post::find($id);
        $posts = Post::all();
        $comment = new Comments();
        $comment->comment = $request->comment;
        $comment->user_id = auth()->user()->id;
        $comment->post_id = $id;
        $comment->save();


        // count comment of post

        // $count_comment=Comments::where('post_id',$id)->count();
        // $post->number_comments=$count_comment;



        $post->number_comments =    $post->comments->count();
        // display sql query
        dd($post->comments->count->toSql());
        $post->save();
        return redirect()->back();
    }
}

//count number of comment of each post
