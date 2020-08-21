@extends('layout.master')
@section('title','Home Page')
	@section('content')
    <hr>
    <h4 id="catehome"> ------- TOP DEALS -------</h4>
    
<div class="row">
    @foreach($topdeal as $row)
    <form action="{{url('shoppingcart/add/'.$row->id)}}" method="POST">
      {!! csrf_field() !!}
      <div class="col-md-3" style="margin: 10px 0;">
        <div class="card" style="width: 15.9rem;">
         <img class="card-img-top" src="{!! $row->HinhAnh !!}" alt="" width="254" height="292">
         <div class="card-body">
            <h5 class="card-title">{!! $row->TenSanPham !!}</h5>
            <h6 class="card-text">{!! number_format($row->Gia) !!}đ</h6>
            <a href="product/detail/{{$row->id}}" class="btn btn-primary">Xem chi tiết</a>
            <button type="submit" class="btn btn-success">Add to <i class="fa fa-shopping-cart"></i></button>
         </div>
      </div>
    </div>
    </form>
    
    @endforeach
</div>
<hr>
<h4 id="catehome"> ------- PHU KIEN GIA RE -------</h4>
    
<div class="row">
    @foreach($pkgiare as $rows)
    <form action="{{url('shoppingcart/add/'.$rows->id)}}" method="POST">
      {!! csrf_field() !!}
    <div class="col-md-3" style="margin: 10px 0;">
      <div class="card" style="width: 15.9rem;">
       <img class="card-img-top" src="{!! $rows->HinhAnh !!}" alt="" width="254" height="292">
       <div class="card-body">
          <h5 class="card-title">{!! $rows->TenSanPham !!}</h5>
          <h6 class="card-text">{!! number_format($rows->Gia) !!}đ</h6>
          <a href="product/detail/{{$rows->id}}" class="btn btn-primary">Xem chi tiết</a>
          <button type="submit" class="btn btn-success">Add to <i class="fa fa-shopping-cart"></i></button>
       </div>
    </div>
    </div>
  </form>
    @endforeach

    
</div>

<hr>
<h4 id="catehome"> ------- TABLET NOI BAT NHAT -------</h4>
    
<div class="row">
    @foreach($tablet as $rows)
    <form action="{{url('shoppingcart/add/'.$rows->id)}}" method="POST">
      {!! csrf_field() !!}
    <div class="col-md-3" style="margin: 10px 0;">
      <div class="card" style="width: 15.9rem;">
       <img class="card-img-top" src="{!! $rows->HinhAnh !!}" alt="" width="254" height="292">
       <div class="card-body">
          <h5 class="card-title">{!! $rows->TenSanPham !!}</h5>
          <h6 class="card-text">{!! number_format($rows->Gia) !!}đ</h6>
          <a href="product/detail/{{$rows->id}}" class="btn btn-primary">Xem chi tiết</a>
          <button type="submit" class="btn btn-success">Add to <i class="fa fa-shopping-cart"></i></button>
       </div>
    </div>
    </div>
  </form>
    @endforeach

    
</div>

<hr>
<h4 id="catehome"> ------- BEST SELLER LAPTOP -------</h4>
    
<div class="row">
    @foreach($laptop as $rows)
    <form action="{{url('shoppingcart/add/'.$rows->id)}}" method="POST">
      {!! csrf_field() !!}
    <div class="col-md-3" style="margin: 10px 0;">
      <div class="card" style="width: 15.9rem;">
       <img class="card-img-top" src="{!! $rows->HinhAnh !!}" alt="" width="254" height="292">
       <div class="card-body">
          <h5 class="card-title">{!! $rows->TenSanPham !!}</h5>
          <h6 class="card-text">{!! number_format($rows->Gia) !!}đ</h6>
          <a href="product/detail/{{$rows->id}}" class="btn btn-primary">Xem chi tiết</a>
          <button type="submit" class="btn btn-success">Add to <i class="fa fa-shopping-cart"></i></button>
       </div>
    </div>
    </div>
  </form>
    @endforeach

    
</div>
@endsection

