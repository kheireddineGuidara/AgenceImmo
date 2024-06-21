<!doctype html>
<html lang=fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <title>@yield('title') | Agence Imo</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Agence Immo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        @php
            $route = request()->route()->getName();
        @endphp
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                @auth
                    <li class="nav-item">
                        <a @class(['nav-link', 'active' => $route === 'admin.property.index'])
                           aria-current="page" href="{{ route('admin.property.index') }}">
                            Gérer les biens
                        </a>
                    </li>
                    <li class="nav-item">
                        <a @class(['nav-link', 'active' => $route === 'admin.option.index'])
                           aria-current="page" href="{{ route('admin.option.index') }}">
                            Gérer les options
                        </a>
                    </li>
                @endauth
                <li class="nav-item">
                    <a @class(['nav-link', 'active' => $route === 'property.index'])
                       aria-current="page" href="{{ route('property.index') }}">
                        Explorer nos biens
                    </a>
                </li>
            </ul>
            <div class="ms-auto">
                @auth
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="{{ route('dashboard') }}" class="nav-link">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <form action="{{ route('logout') }}" method="post">
                                @csrf
                                <button class="nav-link">Se déconnecter</button>
                            </form>
                        </li>
                    </ul>
                @else
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="{{ route('login') }}" class="nav-link">Se Connecter</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('register') }}" class="nav-link">S'inscrire</a>
                        </li>
                    </ul>
                @endauth
            </div>
        </div>
    </div>
</nav>
@yield('content')
</body>
</html>
