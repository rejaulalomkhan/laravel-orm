<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['category_id', 'title', 'slug', 'description', 'excerpt'];

    protected $dates = ['deleted_at'];

    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    public function getPostsCountByCategory($categoryId)
    {
        return $this->where('category_id', $categoryId)->count();
    }

    // public function scopeOnlyTrashed($query)
    // {
    //     return $query->onlyTrashed();
    // }

    public static function getSoftDeletedPosts($perPage = 5)
    {
        return self::onlyTrashed()->paginate($perPage);
    }


}
