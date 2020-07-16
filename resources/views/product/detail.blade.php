@extends('layout.master')
<!DOCTYPE html>
<html>
<head>
	<title>@section('title')
			Chi tiết sản phẩm 
	 @endsection</title>
	 
	<meta charset="utf-8">  
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{ asset('css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{ asset('css/fontawesome-all.min.css')}}">
	<link rel="stylesheet" href="{{ asset('css/bootstrap-datepicker.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/chitiet.css')}}">
	<!-- jQuery library -->
	<script src="{{ asset('js/jquery-3.3.1.min.js')}}"></script>

	<!-- Popper JS -->
	<script src="{{ asset('js/popper.min.js')}}"></script>

	<!-- Latest compiled JavaScript -->
	<script src="{{ asset('js/bootstrap.min.js')}}"></script>
	<script src="{{ asset('js/bootstrap-datepicker.min.js')}}"></script>
</head>
<body>
@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-5 border-right">
				<article>
					<div class="img-big-wrap">
						<div class="img-zoom-container">
							<img class="img-fluid" id="myimage" src="{!! asset($detail->HinhAnh) !!}">
						</div>
					</div>
					<div class="img-small-wrap">
						<div class="img-gallery">
							<img class="img-fluid" src="{!! asset($detail->HinhAnh) !!}">
						</div>
						<div class="img-gallery">
							<img class="img-fluid" src="{!! asset($detail->HinhCT1) !!}">
						</div>
						<div class="img-gallery">
							<img class="img-fluid" src="{!! asset($detail->HinhCT2) !!}">
						</div>
					</div>
				</article>

			</div>
			<div class="col-md-7" style="padding-left: 50px">
				<form action="{{url('shoppingcart/add/'.$detail->MaSanPham)}}" method="POST">
					{{ csrf_field() }}
					<h3 class="product-title">{!! $detail->TenSanPham !!}</h3>
					<p class="product-description">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<a href="#">99 đánh giá</a>
						<br>
						{!! $detail->MoTa !!}
					</p>
					<h4 class="price">Giá hiện tại: <span style="color:red;">{!! number_format($detail->Gia) !!}đ</span></h4>
					<p class="vote">
						2 KHUYẾN MÃI<br>
						<i class="fa fa-check-circle"></i>Tặng gói bảo hiểm rơi vỡ trong 6 tháng <br>
						<i class="fa fa-check-circle"></i>Gói quà tặng Galaxy xem phim & uống cafe cuối tuần
					</p>
					

					<input type="hidden" name="name" value="{!! $detail->TenSanPham !!}" />

					<input type="hidden" name="price" value="{!! number_format($detail->Gia) !!}" />

					<input type="submit" name="addtocart" style="margin-top:5px;" class="btn btn-success" value="Add to Cart" />
				</form>
			</div>
		</div>
	</div>
	<div class="container">
		<hr width="100%" />
		<div class="row">
			<div class="col-md-7">
				<div class="col-md-12">
					<h3>Giới thiệu sản phẩm</h3>
				</div>
				<div id="demo" class="carousel slide" data-ride="carousel">
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
						<li data-target="#demo" data-slide-to="3"></li>
						<li data-target="#demo" data-slide-to="4"></li>
						<li data-target="#demo" data-slide-to="5"></li>
						<li data-target="#demo" data-slide-to="6"></li>
						<li data-target="#demo" data-slide-to="7"></li>
						<li data-target="#demo" data-slide-to="8"></li>
					</ul>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="{{ asset('image/a6.gif ')}}" alt="Los Angeles" width="100%" height="100%"> 
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x2.jpg')}}" alt="Chicago" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x3.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x4.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x5.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x6.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x7.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x8.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
						<div class="carousel-item">
							<img src="{{ asset('image/a6x9.jpg')}}" alt="New York" width="100%" height="100%">
						</div>
					</div>
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
				
				<div class="col-md-12">

					

				</div>
			</div>
			<div class="col-md-5">
				<div class="row">
					<div class="col-md-12">
						<h3>Thông số kỹ thuật</h3>
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Màn hình:
					</div>
					<div class="col-sm-8">
						Super AMOLED, 5.6", HD+
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Hệ điều hành:
					</div>
					<div class="col-sm-8">
						Android 8.0 (Oreo)
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Camera sau:
					</div>
					<div class="col-sm-8">
						16 MP
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Camera trước:
					</div>
					<div class="col-sm-8">
						16 MP
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						CPU:
					</div>
					<div class="col-sm-8">
						Exynos 7870 8 nhân 64-bit
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						RAM:
					</div>
					<div class="col-sm-8">
						3 GB
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Bộ nhớ trong:
					</div>
					<div class="col-sm-8">
						32 GB
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Thẻ SIM:
					</div>
					<div class="col-sm-8">	
						2 Nano SIM, Hỗ trợ 4G
					</div>
					<hr width="90%" />
					<div class="col-sm-4">
						Dung lượng pin:
					</div>
					<div class="col-sm-8">
						3000 mAh
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr width="80%" />
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Tab panes -->
				<div class="tab-content">
					<div id="menu1" class="container tab-pane active"><br>
						<form method="POST" action="">
							{{ csrf_field() }}
							<div class="form-group">
								<label for="comment"><h4>Comments:</h4></label>
								<textarea id="comment" class="form-control" rows="4" placeholder="Write a comment..." name="content"></textarea><br>
								<input type="submit" name="comment" value="Send">
							</div>
						</form>
					</div>
				</div>
						@foreach($comment as $c)
						<div class="media">
							<a href="#" class="pull-left">
								<img src="image/avt.png" class="media-photo img-circle" width="64px" height="64px">
							</a>
							<div class="media-body">
								<span class="media-meta pull-right">{!! $c->created_at !!}</span>
								<h4 class="title">
									{!! $c->email_user !!}
								</h4>
								<p class="summary">{!! $c->content !!}</p>
							</div>
							
						</div>
						@endforeach
			</div>
		</div>
	</div>

@endsection
</body>
</html>