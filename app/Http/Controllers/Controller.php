<?php

namespace App\Http\Controllers;

use App\Models\CategoriesPost;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Post;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;
class Controller extends BaseController


{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {

        $posts=Post::All();
        $categories = CategoriesPost::All();
        View::share('categories', $categories);
        View::share('posts', $posts);
    }

}
