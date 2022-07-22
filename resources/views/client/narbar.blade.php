<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <nav class="nav justify-content-center bg-dark">
            <a class="nav-link active text-white" href="{{ route('client.home.index') }}">Home <i class="fa fa-home"
                    aria-hidden="true"></i></a>

            <a class="nav-link text-white" href="{{ route('show-form-contact') }}">Contact <i class="fa fa-phone"
                    aria-hidden="true"></i></a>
            <div class="dropdown">
                <button style="font-size: 15px;" class="btn btn-dark text-white" type="button" data-toggle="dropdown">Thể loại
                    <span class="caret"></span></button>
                <ul class="dropdown-menu">
                    {{-- // foreach loop to get all caterory --}}
                    @foreach ($categories as $category)
                        <li><a class="dropdown-item" href="{{ route('postbycat',['slug'=>$category->slug]) }}">{{ $category->name_category }}</a></li>
                    @endforeach
                    {{-- <li><a class="dropdown-item" href="#">HTML</a></li> --}}


                </ul>
            </div>
            @if (Auth::check())
                <a id="logout"class="nav-link text-white" href="{{ route('logout') }}">Logout <i
                        class="fa fa-sign-out" aria-hidden="true"></i></a>
            @endif
            @if (!Auth::check())
                <a href="{{ route('show-form-login') }}" id="login" class="btn bg-dark text-white">Đăng nhập</a>
            @endif

            {{-- dropdown setting --}}
            @if (Auth::check())
                <div class="dropdown" >
                    <button style="font-size: 15px;" class="btn btn-dark text-white" type="button" data-toggle="dropdown" id="setting">Setting
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('user.show.client') }}">Chỉnh sửa hồ sơ</a></li>
                        <li><a class="dropdown-item" href="{{ route('client.post.show') }}">Quản lý bài viết</a></li>

                    </ul>
                </div>
            @endif

        </nav>
    </div>

    </nav>
    <script>
        var logout = document.getElementById('logout');
        var login = document.getElementById('login');
        var setting = document.getElementById('setting');
        // check if user is login  logout button will be show

        @php
            if (Auth::check()) {
                echo 'logout.style.display = "block";';
                echo 'login.style.display = "none";';
                echo 'setting.style.display = "block";';
            } else {
                echo 'logout.style.display = "none";';
                echo 'login.style.display = "block";';
                echo 'setting.style.display = "none";';
            }

        @endphp
    </script>
</body>

</html>
