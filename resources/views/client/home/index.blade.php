{{-- include bootstrap --}}
@include('admin.layout.style')
{{-- include navbar --}}
@include('client.narbar')
<link rel="stylesheet" href="{{ asset('css/style.css') }}">

{{-- show hightlight post --}}
{{-- bootstrap 4 card --}}
<div class="container">
    <div class="row">
        <div class="col-md-12">

            @foreach ($posts as $post)
                <div class="card">
                    <div class="card-body">
                        <div class="col-md-3">
                            @if (file_exists(public_path('store/' . $post->image)))
                                <img  src="{{ asset('store/' . $post->image) }}" alt="{{ $post->title }}"
                                    class="img-fluid imgp">
                            @else
                                <img src="{{ $post->image }}" alt="" class="imgp">
                            @endif
                        </div>
                        <div class="col-md-9">
                        <h5 class="card-title strong-text">{{ $post->title }}</h5>
                        {{-- format date d/M/y --}}
                        <p class="card-text">{{ date('d / m / Y', strtotime($post->created_at))  }} / {{ $post->user->name }} / {{ $post->number_comments }} comments</p>
                        <p class="card-text content" >{!! $post->content !!}</p>

                        <a href="{{ route('client.post.detail',['id'=>$post->id]) }}" class="btn btn-primary">Xem chi tiết</a>
                    </div>
                </div>
                </div>
            @endforeach
            {{ $posts->links('pagination::bootstrap-4') }}
            @php
                foreach ($posts as $post)
                {
                    $post->number_comments=$post->comments->count();
                    $post->save();

                }
            @endphp

        </div>
    </div>
</div>
