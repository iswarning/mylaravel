<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
	@yield('link')
</head>
<body>
	@include('layout.menu')

	@yield('content')

	This is footer

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $('#timkiem').on('keyup',function(){
        $keyword = $(this).val();
        $.ajax({
            type:'get',
            url:'{{ url('home') }}',
            data:{
                'search': $keyword
            },
            success:function(data){
                $('#data').html(data);
            }
        });
    })
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
</script>
</body>
</html>

