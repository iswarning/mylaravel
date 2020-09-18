<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'SANPHAM';

    protected $fillable = ['MaLoai','Gia','Instock','MoTa','TenSanPham'];

    public function introduction(){
        $this->hasMany('App\Introduction');
    }
}
