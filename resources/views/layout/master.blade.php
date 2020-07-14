<!DOCTYPE html>
<html>
<head>
	<title>@yield('title')</title>
</head>
<body>

	@include('layout.menu')

	@yield('content')

	This is footer
</body>
</html>