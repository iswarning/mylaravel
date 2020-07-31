<!DOCTYPE html>
<html>
<head>
	<title>@yield('title')</title>
	@yield('link')
</head>
<body>
<div id="app">
	@include('layout.menu')

	@yield('content')

	This is footer

</div>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
