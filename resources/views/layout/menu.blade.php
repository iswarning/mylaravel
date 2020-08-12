
<nav class="navbar navbar-expand-sm bg-dark fixed-top navbar-dark">
      <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a  href="{{ route('home')}}" class="navbar-brand"><img src="{{ asset('image/logo4.png')}}" width="200px" height="50px"></a>
      <div class="collapse navbar-collapse" id="nav-content">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="{{ route('home')}}"> Home </a>
          </li>
        @foreach($menu as $menu)
          <li class="nav-item">
            <a class="nav-link active" href="product/cate/{!! $menu->id !!}"> {!! $menu->name !!} </a>
          </li>
          @endforeach



        <form class="form-inline my-2 my-lg-0 mr-lg-2" method="POST" action="{{asset('product/search')}}">
          {!! csrf_field() !!}
          <li class="nav-item">
              <div class="input-group">
                <ul>
                  <li>
                    <input id="timkiem" class="form-control" type="text" placeholder="Search for..." name="textsearch">
                  </li>


                </ul>

              </div>
          </li>
          <li class="nav-item">
            <span class="input-group-append">
              <button type="submit" name="searchbox" class="btn btn-success"><i class="fa fa-search"></i></button>
            </span>
          </li>
        </form>



            @if(!Auth::check())
              <li class="nav-item">
                <a class="nav-link" href="#">Đăng ký</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{asset('login')}}">Đăng nhập</a>
              </li>
            @else
              <li class="nav-item">
                <a class="nav-link" href="">Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{asset('logout')}}">Logout</a>
              </li>
            @endif
          <li class="nav-item">
            <a class="nav-link" href="{{url('shoppingcart/list')}}"><i class="fa fa-shopping-cart" style="font-size: 15px;"></i></a>
          </li>
          <li class="nav-item" style="padding-left: 0px">
            <span style="width: 5px; height: 5px; border-radius: 1px; background-color: green;color: white;">
              {{Cart::count()}}
            </span>
          </li>
        </ul>
      </div>
  </nav>

