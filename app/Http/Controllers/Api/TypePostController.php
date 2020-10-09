<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\TypePost;

class TypePostController extends Controller
{
    public function index()
    {
        return TypePost::all();
    }
}
