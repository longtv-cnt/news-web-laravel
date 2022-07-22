<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
class Comments extends Model
{
    use HasFactory;
    protected $table = 'comments';
    protected $fillable = ['user_id', 'post_id', 'comment'];
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
