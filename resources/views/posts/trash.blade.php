<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Posts by categories</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>

<body>

    @include('component.navbar')

    <!-- Category News Slider Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 py-3 mx-auto">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">All Trashed Posts</h3>
                    </div>
                    <div class="owl-carousel owl-carousel-3 carousel-item-2 position-relative">
                        @foreach ($softDeletedPosts as $softDeletedPost)
                        <div class="position-relative">
                            <div class="overlay position-relative bg-light my-3">
                                <div class="mb-2" style="font-size: 13px;">
                                    <a href="">{{ $softDeletedPost->category->name }}</a>
                                </div>
                                <a class="h4 m-0" href="">{{ $softDeletedPost->title }}</a>
                                <p class="mt-5">{{ $softDeletedPost->description }}</p>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                {!! $softDeletedPosts->links() !!}
            </div>
        </div>
    </div>
    <!-- Category News Slider End -->





    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

</body>

</html>
