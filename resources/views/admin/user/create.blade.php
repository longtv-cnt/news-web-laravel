@extends('admin.layout.master')
@section('title', 'Create User')
@section('content')
<!------ Include the above in your HEAD tag ---------->


        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Thêm người dùng</h3>
                </div>
           {{-- display error validation --}}

            @if(count($errors) > 0)

                <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                        {{$err}}<br>
                    @endforeach
                </div>
            @endif
                <div class="panel-body">
                    <form action="{{ route('admin.users.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="name">Tên người dùng</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên người dùng">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email">
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu">
                        </div>
                        <div class="form-group">
                            <label for="password_confirmation">Xác nhận mật khẩu</label>
                            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Nhập lại mật khẩu">
                        <div class="form-group">
                            <label for="avatar">Ảnh đại diện</label>
                            <input type="file" class="form-control" id="avatar" name="avatar">
                        </div>
                        <div class="form-group">
                            <label for="role">Vai trò</label>
                            <select class="form-control" id="role" name="role">
                                <option value="admin">Admin</option>
                                <option value="user">User</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary mb-3">Thêm</button>
                    </form>
                </div>
            </div>
        </div>
        @endsection

