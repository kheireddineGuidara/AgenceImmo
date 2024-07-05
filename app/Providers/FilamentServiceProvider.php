<?php

namespace App\Providers;

use App\Http\Middleware\Authenticate;
use Illuminate\Support\ServiceProvider;
use Filament\Facades\Filament;
use App\Http\Middleware\EnsureUserIsAdmin;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Http\Request;

class FilamentServiceProvider extends ServiceProvider
{
    public function register()
    {
        //
    }

    public function boot(Request $request)
    {


    }
}
