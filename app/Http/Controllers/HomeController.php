<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class HomeController extends Controller
{
    //
    public function index()
    {
        //select post where highlight = 1
        $posts = Post::where('highlight', 1)->paginate(5);

        return view('client.home.index', [
            'posts' => $posts
        ]);
    }
}
