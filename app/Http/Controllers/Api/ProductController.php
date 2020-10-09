<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use Illuminate\Support\Str;
use App\Services\DecodeImageService;

class ProductController extends Controller
{
    
    public function index()
    {
        return Product::orderBy('id','desc')->take(5)->get();
    }

    public function store(Request $request)
    {
        
        $request->validate([
            'TenSanPham' => 'required',
            'Gia' => 'required|numeric',
            'MoTa' => 'required',
            'HinhAnh' => 'required',
            'HinhCT1' => 'required',
            'HinhCT2' => 'required',
            'HangSanXuat' => 'required'
        ]);

        $newImage0 = new DecodeImageService($request->HinhAnh);
        $HinhAnh = $newImage0->process();

        $newImage1 = new DecodeImageService($request->HinhCT1);
        $HinhCT1 = $newImage1->process();

        $newImage2 = new DecodeImageService($request->HinhCT2);
        $HinhCT2 = $newImage2->process();

        Product::create([
            'TenSanPham' => $request->TenSanPham,
            'Gia' => $request->Gia,
            'MoTa' => $request->MoTa,
            'MaLoai' => $request->MaLoai,
            'HangSanXuat' => $request->HangSanXuat,
            'HinhAnh' => $HinhAnh,
            'HinhCT1' => $HinhCT1,
            'HinhCT2' => $HinhCT2
        ]);

        return response()->json(['message' => 'Add success'], 200);
        
    }

    public function update(Request $request, $id)
    {

        $files[0] = $request->HinhAnh;
        $files[1] = $request->HinhCT1;
        $files[2] = $request->HinhCT2;

        $products = Product::find($id);

        $items[0] = $products->HinhAnh;
        $items[1] = $products->HinhCT1;
        $items[2] = $products->HinhCT2;
        
        for($i = 0; $i < count($files); $i++)
        {
            if($files[$i] != $items[$i])
            {
                $newImage[$i] = new DecodeImageService($files[$i]);
                $url[$i] = $newImage[$i]->process();
            }
            else
            {
                $url[$i] = $items[$i];
            }
        }

        Product::find($id)->update([
            'TenSanPham' => $request->TenSanPham,
            'Gia' => $request->Gia,
            'MoTa' => $request->MoTa,
            'MaLoai' => $request->MaLoai,
            'HangSanXuat' => $request->HangSanXuat,
            'HinhAnh' => $url[0],
            'HinhCT1' => $url[1],
            'HinhCT2' => $url[2]
        ]);

        return response()->json(['message' => 'Updated success']);
    }

    public function destroy($id)
    {
      return  Product::findOrFail($id)->delete();
    }
}
