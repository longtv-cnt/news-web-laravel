<?php

namespace App\Http\Controllers;

use App\Models\CategoriesPost;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoriesPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin.category.list', [
            'categories_posts' => CategoriesPost::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = $request->name;
        $check_name = CategoriesPost::where('name_category', $name)->first();
        if ($check_name) {
            return redirect()->back()->with('error', 'Tên danh mục đã tồn tại');
        } else {
            $categories_post = new CategoriesPost();
            $categories_post->name_category = $name;
            $slug = Str::slug($request->name);
            $check_slug = CategoriesPost::where('slug', $slug)->first();
                if ($check_slug) {
            $slug = $slug . '-' . rand(1, 100);}
            $categories_post->slug = $slug;
            $categories_post->save();
            return redirect()->back()->with('success', 'Thêm danh mục thành công');
        }
        //

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CategoriesPost  $categoriesPost
     * @return \Illuminate\Http\Response
     */
    public function show(CategoriesPost $categoriesPost)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CategoriesPost  $categoriesPost
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $category = CategoriesPost::find($id);
        return view('admin.category.edit', [
            'category' => $category
        ]);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CategoriesPost  $categoriesPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $name = $request->name;
        $check_name = CategoriesPost::where('name_category', $name)->first();
        if ($check_name) {
            return redirect()->back()->with('error', 'Tên danh mục đã tồn tại');
        } else {
            $categories_post = CategoriesPost::find($id);
            $categories_post->name_category = $name;
            $slug = Str::slug($request->name);
            $check_slug = CategoriesPost::where('slug', $slug)->first();
                if ($check_slug) {
            $slug = $slug . '-' . rand(1, 100);}
            $categories_post->slug = $slug;
            $categories_post->save();
            return redirect()->back()->with('success', 'Sửa danh mục thành công');
        }
        //
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CategoriesPost  $categoriesPost
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categories_post = CategoriesPost::find($id);
        $categories_post->delete();
        return redirect()->back();
        //
    }
}
