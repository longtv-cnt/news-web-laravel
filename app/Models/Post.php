<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\CategoriesPost;
use App\Models\Comments;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable = ['title', 'slug', 'content', 'image', 'category_id', 'user_id'];
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function category()
    {
        return $this->belongsTo(CategoriesPost::class, 'category_id');
    }
    public function comments()
    {
        return $this->hasMany(Comments::class, 'post_id');
    }
    use HasFactory;
}
