<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="{{asset('css/main.css')}}">

</head>
<body>


    @include('layout.menu')
    <div class="container">

        @yield('content')
    </div>


    <hr width="100%" />
    <div class="container" id="footer">
      <div class="row">
        <div class="col-xl-3">
          <a href="#">Tìm hiểu về mua trả góp</a></br>
          <a href="#">Chính sách bảo hành</a></br>
          <a href="#">Chính sách đổi trả</a></br>
          <a href="#">Giao hàng & thanh toán</a></br>
        </div>
        <div class="col-xl-3">
          <a href="#">Giới thiệu công ty(mwg.vn)</a></br>
          <a href="#">Tuyển dụng</a></br>
          <a href="#">Gửi góp ý, khiếu nại</a></br>
          <a href="#">Tìm siêu thị (1744 shop)</a></br>
        </div>
        <div class="col-xl-4">
          Gọi mua hàng : <b>1900.1234</b>  (7:30 - 22:30)</br>
          Gọi khiếu nại: <b>1900.1234</b>  (8:00 - 21:30)</br>
          Gọi bảo hành: <b>1900.1234</b>   (8:00 - 21:00)</br>
          Hỗ trợ kỹ thuật: <b>1900.1234</b>(7:30 - 22:00)</br>
          <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=20098"><img src="{{asset('image/footer.png')}}" style="width: 100px;"></a>
        </div>
        <div class="col-xl-2 icon">
          <a href="https://www.facebook.com/thegioididongcom" style="color:blue"><i class="fa fa-facebook-square" style="color: blue;font-size: 15px"></i> 3.2tr</a>|
          <a href="https://www.youtube.com/user/TGDDVideoReviews?sub_confirmation=1"><i class="fa fa-youtube-square" style="color: red;font-size: 15px"></i></a></br>
          <a href="https://www.dienmayxanh.com/"><img src="{{asset('image/dmx.png')}}" style="width: 120px;"></a></br>
          <a href="https://www.bachhoaxanh.com/"><img src="{{asset('image/bhx.png')}}" style="width: 120px;"></a></br>
        </div>
      </div>
    </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

