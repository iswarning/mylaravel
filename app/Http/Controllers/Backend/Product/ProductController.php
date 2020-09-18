<?php

namespace App\Http\Controllers\Backend\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use Str;
use App\TypeProduct;
class ProductController extends Controller
{

    /* Display List Products */
    public function index(Request $request)
    {

        $listP = Product::paginate(5);
        if($request->ajax()){
    	    return view('show',compact('listP'))->render();
        }
        return view('admin.product.list',compact('listP'));
    }


    /* Display View Store */
    public function viewStore()
    {
        $cate = TypeProduct::where('parent',0)->get();
    	return view('admin.product.add',compact('cate'));
    }


    /* Add New Product */
    public function store(Request $request)
    {

        if(!$request->ajax()){    
            $validatedData = $request->validate([
                'name' => 'required',
                'price' => 'required|numeric',
                'img0' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
                'img1' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
                'img2' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            ]);


            for($i = 0; $i < 3; $i++)
            {
                if($request->hasFile('img'.$i.''))
                {
                    $image = $request->file('img'.$i.'');
                    $name = $image->getClientOriginalName();
                    $name = Str::random(10);
                    $fullName = $name.'.'.$image->getClientOriginalExtension();
                    $destination = public_path('/image');
                    $image->move($destination,$fullName);
                    $img[$i] = "image/".$fullName;
                }
            }
            

            $add = new Product();
            $add->MaLoai = $request->optradio;
            $add->TenSanPham = $request->name;
            $add->MoTa = $request->mota;
            $add->Gia = $request->price;
            $add->HinhAnh = $img[0];
            $add->HinhCT1 = $img[1];
            $add->HinhCT2 = $img[2];
            $add->HangSanXuat = $request->pa;
            $add->save();

            if(!$add){
                return  view('show')->withErrors($validatedData);
            }
            else{
                return  view('show')->withErrors('Add Success');
            }
        }
    }


    /* Display Product where id */
    public function show($id)
    {
        $data = Product::find($id);
        $cate = TypeProduct::where('parent',0)->get();
    	return view('admin.product.edit',compact('data','cate'));
    }


    /* Update Product where id */
    public function update(Request $request, $id)
    {
        $update = Product::find($id)->update([
    		'TenSanPham' => $request->name,
    		'MoTa' => $request->mota,
    		'Gia' => $request->price
    	]);
    	if($update){
    		return redirect()->back()->withErrors(['Update Success !']);
    	}
    }


    /* Delete Product where id */
    public function destroy($id)
    {
        $data = Product::find($id);
    	$data->delete();
    	return back();
    }
}
