<!doctype html>
<html lang=fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link rel="shortcut icon" href="favicon.png">
    <meta name="description" content=""/>
    <meta name="keywords" content="bootstrap, bootstrap4"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <title>@yield('title') | Agence Imo</title>
    @vite([
                'resources/css/app.css',
                'resources/css/bootstrap.min.css',
                'resources/css/tiny-slider.css',
                'resources/css/style.css',
                'resources/js/app.js',
                'resources/js/bootstrap.bundle.min.js',
                'resources/js/custom.js',
    ])
</head>
<body>
@include('parts.header')
@yield('content')
@include('parts.footer')
</body>
</html>
