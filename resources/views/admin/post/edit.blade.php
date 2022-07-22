@extends('admin.layout.master')
@section('title',' Add Post')

@section('content')
<form action="{{route('admin.posts.update',['id'=>$post->id])}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label>Title</label>
        <input type="text" class="form-control" name="title" placeholder="Enter title" required value="{{ $post->title }}">
    </div>
    <div class="form-group">
        <label>Content</label>
        <textarea class="form-control" name="content" id="content" rows="3" required >{!! $post->content !!}</textarea>
    </div>
    <div class="form-group">
        <label>Category</label>
        <select class="form-control" name="category_id">
            @foreach($category as $cate)
            <option value="{{$cate->id}}" @if ($cate->id == $post->category_id)
                selected
                @endif>{{$cate->name_category}}</option>


            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Người viết</label>
        <select class="form-control" name="user_id">
            @foreach($users as $user)
            <option value="{{$user->id}}"
                @if ($user->id == $post->user_id)
                selected
                @endif>{{$user->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Nổi bật</label>
        <input type="checkbox" name="hot" id="hot" @if ($post->highlight == 1)
            checked


        @endif>

    <div class="form-group">
        <label>Mô tả</label>
        <textarea class="form-control" name="description" id="content" rows="3" required>{{ $post->description }}</textarea>
    </div>
    <div class="form-group">
        <label>Image</label>
        <input type="file" class="form-control" name="image" required>
        <div class="form-group">
            <img src="{{ asset('store/'.$post->image) }}" alt="">
    </div>


    <button type="submit" class="btn btn-primary">Sửa bài</button>

@endsection
