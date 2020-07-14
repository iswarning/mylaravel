@extends('admin.master')
@section('content')
<form method="POST" action="">
	{{ csrf_field() }}
  <div class="content-wrapper">
  	<div class="container-fluid">
  		@if($errors->any())
        <div class="alert alert-danger">{{$errors->first()}}</div>
      @endif	
      <div class="form-group">
		<label for="email">Chọn Loại Sản Phẩm:</label></br>
		@foreach($cate as $c)
		<label class="radio-inline"><input type="radio" name="optradio" value="{{$c->id}}"
			<?php if($c->id == $data->MaLoai) { echo "checked";} ?> 
			> {{$c->name}} </label>
		@endforeach
	</div>
	  <div class="form-group">
	    <label for="email">Tên Sản Phẩm:</label>
	    <input type="text" class="form-control" name="name" id="email" value="{{$data->TenSanPham}}">
	  </div>
	  <div class="form-group">
	    <label for="pwd">Mô Tả:</label>
	    <textarea rows="3" class="form-control" name="mota" id="pwd">{{$data->MoTa}}</textarea>
	  </div>
	  <div class="form-group">
	    <label for="pr">Giá:</label>
	    <input type="text" class="form-control" name="price" id="pr" value="{{$data->Gia}}">
	  </div>
	  

	  <button type="submit" class="btn btn-default">Update</button>
	  <input action="action" onclick="window.history.go(-1); return false;" type="submit" value="Cancel"/>
	</div>
</div>
</form>
@endsection