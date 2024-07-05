

<!-- Start Header/Navigation -->
<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
    @php
        $route = request()->route()->getName();
;    @endphp
    <div class="container">
        <a class="navbar-brand" href="{{route('home')}}">ImmoLink<span>.</span></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
                aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse" id="navbarsFurni">
            <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                <li @class(['nav-item', 'active' => $route == 'home'])>
                    <a class="nav-link" href="{{route('home')}}">Accueil</a>
                </li>
                <li @class(['nav-item', 'active' => $route == 'fo.goods'])>
                    <a class="nav-link" href="{{route('fo.goods')}}">Nos Biens</a>
                </li>
                @auth
                    <li @class(['nav-item', 'active' => Route::currentRouteName() == 'properties'])>
                        <a class="nav-link" href="{{ route('properties') }}">Vendre</a>
                    </li>

                @endauth

                <li @class(['nav-item', 'active' => $route == 'fo.contact'])>
                    <a class="nav-link" href="{{route('contact-us')}}">Contactez-nous</a>
                </li>
            </ul>
            @guest
            <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                <li @class(['nav-item', 'active' => $route == 'dashboard'])>
                    <a class="nav-link d-flex align-items-center" href="{{ route('dashboard') }}">
                        <img src="{{ Vite::asset('resources/images/user.svg') }}" alt="User Icon" class="me-2"> Connexion
                    </a>
                </li>
            </ul>
            @endguest
            @auth
                <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                    <li @class(['nav-item', 'active' => $route == 'dashboard'])>
                        <a class="nav-link d-flex align-items-center" href="{{ route('dashboard') }}">
                            <img src="{{ Vite::asset('resources/images/user.svg') }}" alt="User Icon" class="me-2"> Tableau de bord
                        </a>
                    </li>
                </ul>
            @endauth
        </div>
    </div>

</nav>
<!-- End Header/Navigation -->
