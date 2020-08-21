<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'SANPHAM';

    protected $fillable = ['Instock','MoTa','TenSanPham'];
}
