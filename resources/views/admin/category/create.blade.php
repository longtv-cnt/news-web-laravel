@extends('admin.layout.master')
@section('title',' Add Category')
@section('content')
<form action="{{route('admin.categories.store')}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label>Name</label>
        <input type="text" class="form-control" name="name" placeholder="Enter name" required>
    </div>

    <button type="submit" class="btn btn-primary">Thêm loại</button>
</form>
@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

@if (session('success'))
<div class="alert alert-success">
    {{ session('success') }}

@endif
@endsection



