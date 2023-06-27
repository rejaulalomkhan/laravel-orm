<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\PostsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect('/posts');
});

// Post Controller
Route::get('/posts', [PostsController::class,'index']);
Route::get('/posts/categories/{id}', [PostsController::class,'totalPosts']);
Route::get('/posts/{id}/delete', [PostsController::class,'delete']);
Route::get('/posts/trash', [PostsController::class,'trashedPosts']);

// Categories Controller Group
Route::controller(CategoriesController::class)->group(function (){
    // Find all posts in a specific category
    Route::get('/categories/{id}/posts','showPosts');
    // Get the latest category posts
    Route::get('/categories/{id}/post','latestPost');
});
