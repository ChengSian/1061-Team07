<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <title>@yield('title', '手機資料') </title>

    <!--
    <link rel="stypesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stypesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    -->

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #131414;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }

        li {
            display: inline;
            font-weight: bold;
            font-family: sans-serif;
        }

        a {
            color: coral;
            text-decoration: none;
        }

        td {
            font-weight: bold;
            font-family: sans-serif;
            /*padding-left: 15px;*/
            /*padding-right: 15px;*/
            border-width: 2px;
            /*border-style: ;*/
            border-color: #aed2ff;
        }

        th {
            font-weight: bold;
            font-family: sans-serif;
            /*padding-left: 15px;*/
            /*padding-right: 15px;*/
            border-width: 2px;
            /*border-style: ;*/
            border-color: #aed2ff;
            /*color: #2b542c;*/
        }

        tr:hover {
            background-color: #cce6ff;
        }

        td:hover {
            background-color: #99FFCC;
        }

        table {
            border-collapse: collapse;
        }

        .form-group {
            font-weight: bold;
            font-family: sans-serif;
        }
    </style>
</head>
<body>
<div class="flex-center position-ref full-height">
    @if (Route::has('login'))
        <div class="top-right links">
            @auth
                <a href="{{ url('/home') }}">Home</a>
            @else
                <a href="{{ route('login') }}">Login</a>
                <a href="{{ route('register') }}">Register</a>
            @endauth
        </div>
    @endif

    <div class="content full-height">
        @include('header')

        @yield('smartphones_contents')

        @include('footer')
    </div>
</div>

</body>
</html>
