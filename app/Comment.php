<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
	public $timestamps = true;
    protected $table = 'comment';
    protected $fillable = ['content','reply'];
}
