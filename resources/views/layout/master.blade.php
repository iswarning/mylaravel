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
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
