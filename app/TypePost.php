<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypePost extends Model
{
    protected $table = 'type_post';
    protected $fillable = ['title'];
}
