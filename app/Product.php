<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'SANPHAM';

    protected $fillable = ['Instock','MoTa','TenSanPham'];

    public function introduction(){
        $this->hasMany('App\Introduction');
    }
}
