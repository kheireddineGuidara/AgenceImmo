@extends('base-fo')
@section('content')
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
                       aria-current="page" href="{{ route('fo.goods') }}">
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
@endsection
