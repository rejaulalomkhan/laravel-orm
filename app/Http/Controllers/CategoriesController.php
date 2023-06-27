<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function latestPost($id){
        $category = Category::find($id); // Retrieve the category instance by ID
        $latestPost = $category->getLatestPost();
        return view('categories.index',compact('latestPost'));
    }

    public function showPosts($id){
        $categories = Category::findOrFail($id);
        $posts = $categories->posts;
        return view('categories.cat-posts', compact('posts','categories'));
    }
}
