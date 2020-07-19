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

	@yield('script')
</body>
</html>