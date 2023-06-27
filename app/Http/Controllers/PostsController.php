<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        $posts = Post::with('category')->cursorPaginate(5);
        return view('posts.index', compact('posts'));
    }

    public function totalPosts($id)
    {
        $categoryPostsCount = (new Post)->getPostsCountByCategory($id);
        return $categoryPostsCount;
    }

    public function delete($id)
    {
        $post = Post::findOrFail($id);
        return $post->delete();
    }

    public function trashedPosts()
    {
        $softDeletedPosts = Post::getSoftDeletedPosts(5);
        return view('posts.trash',compact('softDeletedPosts'));
    }
}
