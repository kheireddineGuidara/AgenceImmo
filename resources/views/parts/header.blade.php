<!-- Start Header/Navigation -->
<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
    @php
        $route = request()->route()->getName();
;    @endphp
    <div class="container">
        <a class="navbar-brand" href="{{route('home')}}">Agence Immo<span>.</span></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
                aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse" id="navbarsFurni">
            <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                <li @class(['nav-item', 'active' => $route == 'home'])>
                    <a class="nav-link" href="{{route('home')}}">Home</a>
                </li>
                <li @class(['nav-item', 'active' => $route == 'fo.goods'])>
                    <a class="nav-link" href="{{route('fo.goods')}}">Our
                        goods</a>
                </li>
                <li @class(['nav-item', 'active' => $route == 'home'])>
                    <a class="nav-link" href="{{route('home')}}">Contact
                        us</a>
                </li>
                <li @class(['nav-item', 'active' => $route == 'about-us'])>
                    <a class="nav-link" href="{{route('about-us')}}">About
                        us</a>
                </li>
            </ul>

            <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                <li><a class="nav-link" href="{{route('login')}}">
                        <img src="{{ Vite::asset('resources/images/user.svg')}}">
                    </a>
                </li>
            </ul>
        </div>
    </div>

</nav>
<!-- End Header/Navigation -->
