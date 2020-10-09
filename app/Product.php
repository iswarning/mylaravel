<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'SANPHAM';

    protected $guarded = [];

    public function introduction(){
        $this->hasMany('App\Introduction');
    }
}
