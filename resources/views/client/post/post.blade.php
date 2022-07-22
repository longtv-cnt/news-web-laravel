@include('client.narbar')
@include('admin.layout.style')
<link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
{{-- display list post follow name --}}
<div class="container">
    <input style="font-size: 15px;" type="submit" value="thêm bài mới" class="btn btn-success">
    <table class="table table-inverse" id="mytable">
        <thead>
            <tr>
                <th>Người viết</th>

                <th scope="col">Tên bài viết</th>
                <th scope="col">Nội dung</th>
                <th scope="col">Thể loại</th>
                <th scope="col">Ngày đăng</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $post)
                <tr>
                    <td>{{ $post->user->name }} </td>

                    <td>{{ $post->title }}</td>
                    <td>{!! $post->content !!}</td>
                    <td style="font-size: 15px; line-height:15px;">{{ $post->category->name_category }}</td>
                    <td>{{ $post->created_at }}</td>
                    <td>
                        <a href="{{ route('client.post.detail', ['id' => $post->id]) }}"
                            class="btn btn-primary">Xem</a>
                        <a href="" class="btn btn-warning">Sửa</a>
                        <a href="" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <div class="m-3" style="height: 30px;"></div>
    {{-- {{ $posts->links('pagination::bootstrap-4') }} --}}
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        // pagination
        $('#mytable').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
            "responsive": true,
            "language": {
                "paginate": {
                    "previous": "Trước",
                    "next": "Sau"
                }
            }
        });
    });
</script>
