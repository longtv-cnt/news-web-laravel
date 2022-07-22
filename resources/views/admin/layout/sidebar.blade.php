@include('admin.layout.style')
<nav class="nav flex-column mt-5 shadow">
    <a class="nav-link active" href="{{ route('admin.categories.index') }}"> <i class="fa-solid fa-album-collection"></i>Category</a>
    <a class="nav-link" href="#">Comment</a>
    <a class="nav-link" href="#">Contact</a>
    <a class="nav-link " href="{{ route('admin.posts.index') }}">Post</a>
    <a class="nav-link " href="{{ route('admin.users.index') }}">User</a>
    <a class="nav-link btn btn-danger" href="{{ route('logout') }}">Logout</a>
  </nav>
