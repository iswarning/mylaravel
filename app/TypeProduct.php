<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeProduct extends Model
{
    protected $table = 'LOAISANPHAM';
    protected $fillable = [
        'name'
    ];
}
