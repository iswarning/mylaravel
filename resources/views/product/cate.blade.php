@extends('layout.master')
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<base href="{{asset('')}}">
	<link rel="shortcut icon" type="image/png" href="image/ico.png"/>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- jQuery library -->
    <script src="js/jquery-3.3.1.min.js"></script>

    <!-- Popper JS -->
    <script src="js/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>

    <link href="css/sb-admin.css" rel="stylesheet">
    
</head>
<body>
@section('content')
<div class="container dienthoai" style="margin-top: 100px;">
		<div class="row">
			@foreach($cate as $cate)
			<div class="col-md-3">
					<a href="product/detail/{!! $cate->MaSanPham !!}" class="gtco-item">
						<div class="fig">
							<div class="overplay">
							</div>	
							<img src="{!! $cate->HinhAnh !!}" width="100%" height="310px">
						</div>
						<div class="gtco-text">
							<h2>{!! $cate->TenSanPham !!}</h2>
							<p>{!! number_format($cate->Gia); !!}đ</p>
							<span class="btn btn-info">Xem chi tiết</span>
						</div>
					</a>
			</div>
			@endforeach

		</div>
	</div>
@endsection 
</body>
</html>
