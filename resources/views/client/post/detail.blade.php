{{-- post detail --}}



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    {{-- font owesome cdn --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <title>Detail-{{ $post->title }}</title>
</head>

<body>
    @include('client.narbar')
    <div class="container">
        <h5> Được viết bởi:<i>{{ $post->user->name }} <div class="float-right"><i
                        class="fa-solid fa-eye"></i>:{{ $post->number_views }}</i>
    </div>
    </h5>
    <h5> Ngày đăng:<i>{{ date('d / m / Y', strtotime($post->created_at)) }}</i></h5>
    <h3>{{ $post->title }}</h3>
    <p>{!! $post->content !!}</p>
    @if (file_exists(public_path('store/' . $post->image)))
        <img src="{{ asset('store/' . $post->image) }}" alt="{{ $post->title }}" class="img-fluid imgp">
    @else
        <img src="{{ $post->image }}" alt="" class="imgp">
    @endif
    {{-- summernote --}}


    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
        <br
        <label for="" class="mt-5"><b> Bình luận</b></label>
    @if (Auth::check())

        <script>
            $(document).ready(function() {
                $('#comment').summernote();
            });
        </script>
        <script>
            $('#comment').summernote({
                placeholder: 'Nhập nội dung bình luận',
                tabsize: 2,
                height: 100,
                minHeight: 50,
                maxHeight: 500,
                focus: true,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['fontname', ['fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['fullscreen', 'codeview', 'help']]
                ]
            });
        </script>
        <form action="{{ route('client.posts.storeComment',['id'=>$post->id]) }}" method="POST">
            @csrf
            <input type="hidden" name="post_id" value="{{ $post->id }}">
            <textarea id="comment" name="comment">
                <p>Nhập bình luận</p>
            </textarea>
        <input type="submit" value="Bình luận" class="btn btn-primary mb-3">
    @else
        <p>Bạn chưa đăng nhập. Vui lòng <a href="{{ route('show-form-login') }}">đăng nhập</a> để bình luận</p>
    @endif


    {{-- show comment each post --}}
      @if (count($post->comments) > 0)
    @foreach ($post->comments as $comment)

            <div class="row">
                <div class="col-md-2">
                    <img src="{{ asset('store/' . $comment->user->avatar) }}" alt="" width="30%">
                </div>
                <div class="col-md-10">
                    <h5>{{ $comment->user->name }}</h5>
                    <p>{!! $comment->comment !!}</p>
                </div>
            </div>
            <hr>
        @endforeach
    @else
        <p>Chưa có bình luận</p>
    @endif
    {{ $post->number_comments }} bình luận
    <script>!function(s,u,b,i,z){var o,t,r,y;s[i]||(s._sbzaccid=z,s[i]=function(){s[i].q.push(arguments)},s[i].q=[],s[i]("setAccount",z),r=["widget.subiz.net","storage.googleapis"+(t=".com"),"app.sbz.workers.dev",i+"a"+(o=function(k,t){var n=t<=6?5:o(k,t-1)+o(k,t-3);return k!==t?n:n.toString(32)})(20,20)+t,i+"b"+o(30,30)+t,i+"c"+o(40,40)+t],(y=function(k){var t,n;s._subiz_init_2094850928430||r[k]&&(t=u.createElement(b),n=u.getElementsByTagName(b)[0],t.async=1,t.src="https://"+r[k]+"/sbz/app.js?accid="+z,n.parentNode.insertBefore(t,n),setTimeout(y,2e3,k+1))})(0))}(window,document,"script","subiz", "acrjwdnaducydbrlkhtm")</script>
</body>



</html>
