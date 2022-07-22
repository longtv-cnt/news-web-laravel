<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Post;
class CategoriesPost extends Model
{
    protected $table = 'categories_posts';
    protected $fillable = ['name_category', 'slug'];
   public function posts(){
         return $this->hasMany(Post::class, 'category_id');
   }
        use HasFactory;
}
