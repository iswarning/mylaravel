<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Product;
use App\User;
class DashBoardController extends Controller
{
    public function index()
    {
    	$listP = Product::paginate(5);
    	return view('admin.dashboard',compact('listP'));
    }
    
}
