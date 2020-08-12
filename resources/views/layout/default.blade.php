@extends('layout.master')
@section('title','Home Page')
@section('link')
    <link rel="shortcut icon" type="image/png" href="image/ico.png"/>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
    
    <!-- jQuery library -->
    <script src="{{ asset('js/jquery-3.3.1.min.js') }}"></script>

    <!-- Popper JS -->
    <script src="js/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>

    <link href="css/sb-admin.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
    <base href="{{asset('')}}">
@endsection

	@section('content')
	        <div class="container">
				<div class="row">
					<div class="col-md-8">
						<div id="demo" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								@foreach($slide as $s)
								<div class="carousel-item
									<?php if($s->name == 'slide show 1') echo 'active'; ?>
								">
									<a  href="#"><img class="img-fluid" src="{{asset($s->src)}}" alt="{{$s->alt}}" ></a>
								</div>
								@endforeach

								<a class="carousel-control-prev" href="#demo" data-slide="prev">
									<span class="carousel-control-prev-icon"></span>
								</a>
								<a class="carousel-control-next" href="#demo" data-slide="next">
									<span class="carousel-control-next-icon"></span>
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-4" >
						<h4><a href="trangtintuc.html">TIN CÔNG NGHỆ </a> </h4>
						<div class="media">
							<a href="trangtintuc.html" style="font-size: 14px;"><img class="img-responsive" class="mr-3" src="image/tt1.png">
								<div class="media-body">
									<p>Smartphone Android One mới của Nokia xuất hiện,thiết kế giống Lumia.</p>
								</div>
							</a>
						</div>
						<a href="trangtintuc.html"><img class="img-fluid" src="image/tt2.png" style="margin-top: 10px"></a>

						<a href="trangtintuc.html"><img class="img-fluid" src="image/tt3.png"></a>
					</div>
				</div>
			</div>

  <div  class="container dienthoai">
    <div class="row">
      <div class="col-md-12">
        <h4>All Products</h4>
      </div>
    </div>
    <div class="row">
        @foreach($index as $row)


        <div class="col-md-3">
            <a href="product/detail/{{$row->MaSanPham}}" class="gtco-item">
              <div class="fig">
                <div class="overplay">
                </div>
                <img src="{!! $row->HinhAnh !!}" width="100%" height="310px">
              </div>
              <div class="gtco-text">
                <h2>{!! $row->TenSanPham !!}</h2>
                <p>{!! number_format($row->Gia) !!}đ</p>
                <span class="btn btn-info" id="view">Xem chi tiết </span>
              </div>
            </a>

        </div>

        @endforeach


    </div>
  </div>

@endsection

