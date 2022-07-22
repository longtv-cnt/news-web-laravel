<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CategoriesPostController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CommentsController;
use App\Http\Middleware\checkLogin;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/login',[UserController::class,'showFormLogin'])->name('show-form-login');
Route::post('/login',[UserController::class,'login'])->name('login');
Route::prefix('contact')->group(function(){
    Route::get('/',[ContactController::class,'showFormContact'])->name('show-form-contact');
    Route::post('/',[ContactController::class,'store'])->name('client.contact.store');
});
Route::middleware('checklogin')->prefix('admin')->group(function () {

    Route::prefix('posts')->group(function () {
        Route::get('/', [PostController::class, 'index'])->name('admin.posts.index');
        Route::get('/create', [PostController::class, 'create'])->name('admin.posts.create');
        Route::post('/store', [PostController::class, 'store'])->name('admin.posts.store');
        Route::get('/edit/{id}', [PostController::class, 'edit'])->name('admin.posts.edit');
        Route::post('/update/{id}', [PostController::class, 'update'])->name('admin.posts.update');
        Route::get('/delete/{id}', [PostController::class, 'destroy'])->name('admin.posts.delete');
    });
Route::prefix('categories')->group(function () {
    Route::get('/', [CategoriesPostController::class, 'index'])->name('admin.categories.index');
    Route::get('/create', [CategoriesPostController::class, 'create'])->name('admin.categories.create');
    Route::post('/store', [CategoriesPostController::class, 'store'])->name('admin.categories.store');
    Route::get('/edit/{id}', [CategoriesPostController::class, 'edit'])->name('admin.categories.edit');
    Route::post('/update/{id}', [CategoriesPostController::class, 'update'])->name('admin.categories.update');
    Route::get('/delete/{id}', [CategoriesPostController::class, 'destroy'])->name('admin.categories.delete');
});
Route::prefix('contacts')->group(function () {
    Route::get('/', [ContactController::class, 'index'])->name('admin.contacts.index');
    Route::get('/create', [ContactController::class, 'create'])->name('admin.contacts.create');

    Route::get('/edit/{id}', [ContactController::class, 'edit'])->name('admin.contacts.edit');
    Route::post('/update/{id}', [ContactController::class, 'update'])->name('admin.contacts.update');
    Route::get('/delete/{id}', [ContactController::class, 'destroy'])->name('admin.contacts.delete');
});
Route::prefix('users')->group(function () {
    Route::get('/', [UserController::class, 'index'])->name('admin.users.index');
    Route::get('/create', [UserController::class, 'create'])->name('admin.users.create');
    Route::post('/store', [UserController::class, 'store'])->name('admin.users.store');
    Route::get('/edit/{id}', [UserController::class, 'edit'])->name('admin.users.edit');
    Route::post('/update/{id}', [UserController::class, 'update'])->name('admin.users.update');
    Route::get('/delete/{id}', [UserController::class, 'destroy'])->name('admin.users.delete');
});
Route::prefix('comments')->group(function () {
    Route::get('/', [CommentsController::class, 'index'])->name('admin.comments.index');
    Route::get('/create', [CommentsController::class, 'create'])->name('admin.comments.create');
    Route::post('/store', [CommentsController::class, 'store'])->name('admin.comments.store');
    Route::get('/edit/{id}', [CommentsController::class, 'edit'])->name('admin.comments.edit');
    Route::post('/update/{id}', [CommentsController::class, 'update'])->name('admin.comments.update');
    Route::get('/delete/{id}', [CommentsController::class, 'destroy'])->name('admin.comments.delete');
});
});

Route::get('/',[HomeController::class,'index'])->name('client.home.index');
Route::get('/logout',[UserController::class,'logout'])->name('logout');
Route::prefix('posts')->group(function () {
    Route::get('/client/post/', [PostController::class, 'showPostFollowName'])->name('client.post.show');

    Route::post('/{id}/comment', [PostController::class, 'storeComment'])->name('client.posts.storeComment');
});
Route::get('/detail/{id}',[PostController::class,'showDetail'])->name('client.post.detail');
Route::get('{slug}/post',[PostController::class,'fillterByCat'])->name('postbycat');
Route::get('/user/update',[UserController::class,'showClientUser'])->name('user.show.client');
Route::put('/user/update',[UserController::class,'updateClientUser'])->name('update.user.client');
