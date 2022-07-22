@include('admin.layout.style')
@include('client.narbar')


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liên hệ</title>
</head>
<body>
    {{-- form contact --}}
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4>Contact Form</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{route('client.contact.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter name" required>
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label for="">Message</label>
                                <textarea class="form-control" name="message" id="message" rows="3" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send</button>
                        </form>
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{session('success')}}
                            </div>

                        @endif
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
