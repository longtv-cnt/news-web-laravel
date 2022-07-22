@extends('admin.layout.master')
@section('title',' Add Post')

@section('content')
<form action="{{route('admin.posts.store')}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label>Title</label>
        <input type="text" class="form-control" name="title" placeholder="Enter title" required>
    </div>
    <div class="form-group">
        <label>Content</label>
        <textarea class="form-control" name="content" id="content" rows="3" required></textarea>
    </div>
    <div class="form-group">
        <label>Category</label>
        <select class="form-control" name="category_id">
            @foreach($categories as $category)
            <option value="{{$category->id}}">{{$category->name_category}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Người viết</label>
        <select class="form-control" name="user_id">
            @foreach($users as $user)
            <option value="{{$user->id}}">{{$user->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Nổi bật</label>
       <input type="checkbox" name="hot" id="hot">
    <div class="form-group">
        <label>Mô tả</label>
        <textarea class="form-control" name="description" id="content" rows="3" required></textarea>
    </div>
    <div class="form-group">
        <label>Image</label>
        <input type="file" class="form-control" name="image" required>
    </div>


    <button type="submit" class="btn btn-primary">Thêm bài</button>

@endsection
