
@include('client.narbar')
@include('admin.layout.style')

{{-- form update user --}}
@if (Auth::check())
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">Chỉnh sửa hồ sơ</h3>
                        <div class="alert alert-warning">
                            <strong>Lưu ý!</strong>
                            <p>Nếu bạn không muốn đổi mật khẩu, hãy để trống 2 ô mật khẩu và mật khẩu xác nhận.</p>
                        </div>
                            {{-- get  all error --}}
                            @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif


                        <form action="{{ route('update.user.client') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')

                            <div class="form-group">
                                <label for="name">Tên</label>
                                <input type="text" class="form-control" id="name" name="name"
                                    value="{{ Auth::user()->name }}">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                    value="{{ Auth::user()->email }}">
                            </div>
                            <div class="form-group">
                                <label for="password">Mật khẩu</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            {{-- xác nhận mật khẩu --}}
                            <div class="form-group">
                                <label for="password_confirmation">Xác nhận mật khẩu</label>
                                <input type="password" class="form-control" id="password_confirmation"
                                    name="password_confirmation">
                            <div class="form-group">
                                <label for="avatar">Ảnh đại diện</label>
                                <input type="file" class="form-control" id="avatar" name="avatar">
                            </div>
                            <button type="submit" class="btn-lg btn-primary">Lưu</button>
                        </form>
@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>

@endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
{{-- end form update user --}}
{{-- form update user --}}
