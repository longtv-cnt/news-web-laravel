@extends('admin.layout.master')
@section('title','Category')
@section('content')

        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Category</h3>
                </div>
                <div class="card-body">
                    <a href="{{ route('admin.categories.create') }}"><button class="btn btn-success mb-3"> Thêm loại </button></a>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Slug</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($categories_posts as $category)
                            <tr>
                                <td>{{$category->id}}</td>
                                <td>{{$category->name_category}}</td>
                                <td aria-readonly=""> {{$category->slug}}</td>
                                <td>
                                    <a href="{{route('admin.categories.edit',['id'=>$category->id])}}" class="btn btn-primary">Edit</a>
                                    <a href="{{route('admin.categories.delete',['id'=>$category->id])}}" class="btn btn-danger">Delete</a>
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
