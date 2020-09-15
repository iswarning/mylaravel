@extends('admin.layout.app')
@section('content')
<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Product</li>
      </ol>

      <!-- Example DataTables Card-->    
  <div class="card mb-3">

    <div class="card-header">
          <i class="fa fa-table"></i> Data Table Products
    </div>

        <div class="card-body">
          <div class="table-responsive" >
            <div id='showData'>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Cate</th>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Image</th>
                  <th>Image1</th>
                  <th>Image2</th>
                  <th>Brand</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              
              	@foreach($listP as $row)
                <tr>
                  <td>{{$row->id}}</td>
                  <td>{{$row->MaLoai}}</td>
                  <td>{{$row->TenSanPham}}</td>
                  <td>{{number_format($row->Gia)}}</td>
                  <td><img src="{{asset($row->HinhAnh)}}" width="40px" height="40px"></td>
                  <td><img src="{{asset($row->HinhCT1)}}" width="40px" height="40px"></td>
                  <td><img src="{{asset($row->HinhCT2)}}" width="40px" height="40px"></td>
                  <td>{{$row->HangSanXuat}}</td>
                  <td>
                  	<a href="{{ url('admin/product/edit/'.$row->id) }}">Edit</a>
          			/<a href="{{ url('admin/product/delete/'.$row->id) }}" onclick="return ConfirmDelete();">Delete</a></td>
                </tr>
                @endforeach
              
              </tbody>
            </table>
            </div>

            <div>
            	<a href="{{url('admin/product/add')}}">Add Products</a>
            </div>

            <div style="float: right;">
            	{{ $listP->links() }}
            </div>

          </div>
        </div>

        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>


@endsection
