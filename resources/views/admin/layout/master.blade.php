<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    @include('admin.layout.style');
</head>

<body>
    <div class="container" style="min-height: 95vh">
        <div class="row">
            <div class="col-md-3">
                @include('admin.layout.sidebar')
            </div>
            <div class="col-md-9">
                @yield('content')
            </div>
        </div>
        @include('admin.layout.footer')
    </div>
    @include('admin.layout.script')
</body>

</html>

