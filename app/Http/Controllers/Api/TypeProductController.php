<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\TypeProduct;

class TypeProductController extends Controller
{
    public function index()
    {
        return TypeProduct::all();
    }
}
