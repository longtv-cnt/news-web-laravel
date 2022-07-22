@extends('admin.layout.master')
@section('title','User List')
@section('content')

        <div class="col-md-9">
            <div class="">
                <div class="card-header">
                    <h3 class="card-title">Users</h3>
                </div>
                <div>
                    <a href="{{ route('admin.users.create') }}"><button class="btn btn-success mt-3"> Thêm người dùng  </button></a>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Avatar</th>
                                <th>Vai trò</th>
                                <th>Ngày tạo</th>
                                <th>Ngày sửa</th>
                                <th colspan="2" class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                            <tr>
                                <td>{{$user->id}}</td>
                                <td>{{$user->name}}</td>
                                <td> {{$user->email}}</td>
                                <td> <img src="{{ asset('store/'.$user->avatar) }}" alt="" width="100px"></td>
                                <td> {{$user->role}}</td>
                                <td> {{$user->created_at}}</td>
                                <td> {{$user->updated_at}}</td>

                                <td>
                                    <a href="{{route('admin.users.edit',['id'=>$user->id])}}" class="btn btn-primary">Edit</a>

                                </td>
                                <td>
                                    <a href="{{route('admin.users.delete',['id'=>$user->id])}}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
