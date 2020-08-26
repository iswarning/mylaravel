@extends('layout.master')

@section('content')
		<div class="row" style="margin: 50px 0;">
			<div class="col-md-5 border-right">
				<article>
					<div class="img-big-wrap">
						<div class="img-zoom-container">
							<img class="img-fluid" id="myimage" src="{!! asset($detail->HinhAnh) !!}">
						</div>
					</div>
					<div class="img-small-wrap">
						<div class="img-gallery">
							<a href="#" onclick="showImage1()">
								<img id="img1" class="img-fluid" src="{!! asset($detail->HinhAnh) !!}">
							</a>
						</div>
						<div class="img-gallery">
							<a href="#" onclick="showImage2()">
								<img id="img2" class="img-fluid" src="{!! asset($detail->HinhCT1) !!}">
							</a>
						</div>
						<div class="img-gallery">
							<a href="#" onclick="showImage3()">
								<img id="img3" class="img-fluid" src="{!! asset($detail->HinhCT2) !!}">
							</a>
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
						@foreach($slided as $s)
						<div class="carousel-item <?php if($s->id = 8){echo "active";} ?>">
							<img src="{{ asset($s->src)}}" alt="{{$s->alt}}" width="100%" height="100%">
						</div>
						@endforeach
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
	<hr width="80%" />
		<div class="row">
			<div class="col-md-12">
				<!-- Tab panes -->
				<div class="tab-content">
					<div id="menu1" class="container tab-pane active"><br>
						<form method="POST" action="">
							{{ csrf_field() }}
							<div class="form-group">
								<label for="comment"><h4>Comments:</h4></label>
								<textarea id="content" class="form-control" rows="4" placeholder="Write a comment..." name="content"></textarea><br>
                                <input type="hidden" id="id_product" value="{{ $detail->id }}">
                                <input type="hidden" id="email_user" value="{{ Auth::user()->email }}">
								<input type="submit" name="comment" value="Send" id="sendComment">
							</div>
						</form>

					</div>
				</div>




			</div>
        </div>
        <div id="showComment"></div>
        @foreach($comment as $c)
        <hr>
        <div class="row" id="rowData">
            <div class="col-md-2">
                <img src="{{asset('image/avatar-default.jpg')}}" width="40px" height="40px">
            </div>
            <div class="col-md-8">
                <h5><b>{{$c->email_user}}</b></h5>
                <p>{{$c->content}}</p>
            </div>
            <div class="col-md-2">
                {{Carbon\Carbon::parse($c->created_at)->diffForHumans()}}
                <br><a href="#" onclick="reply()" id="clickme">Reply</a>
            </div>
        </div>
        @endforeach

        <div>
            {{$comment->links()}}
        </div>


@endsection
