@extends('admin.layout.master')
@section('title','Post')
@section('content')

        <div class="col-md-9">
            <div class="">
                <div class="card-header">
                    <h3 class="card-title text-center">Post</h3>
                </div>
                <div class="">
                    <a href="{{ route('admin.posts.create') }}"><button class="btn btn-success mb-3"> Thêm bài </button></a>
                    <table class="table table-inverse">
                        <thead>
                            <tr>
                              <th>ID</th>
                                <th>Thể loại</th>
                                <th>Tên bài</th>
                                <th>Người viết</th>
                                <th>Nội dung</th>
                                <th>highlight</th>
                                <th>New post</th>
                                <th colspan="2" class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $post)
                            <tr>
                                <td>{{$post->id}}</td>
                                <td>{{$post->category->name_category}}</td>
                                <td> {{$post->title}}</td>
                                <td> {{$post->user->name}}</td>
                                <td> {!! $post->content !!}</td>
                                <td> {{$post->highlight==1? 'có' : 'không'}}</td>
                                <td> {{$post->new_post==1? 'có' :'không'}}</td>
                                <td>
                                    <a href="{{route('admin.posts.edit',['id'=>$post->id])}}" class="btn btn-primary">Edit</a>

                                </td>
                                <td> <a href="{{route('admin.posts.delete',['id'=>$post->id])}}" class="btn btn-danger">Delete</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
