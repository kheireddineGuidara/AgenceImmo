<?php

namespace App\Http\Controllers;

use App\Models\Property;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index()
    {
        $properties = Property::available()->orderBy('created_at','desc')->limit(4)->get();
        /** @var User $user */
        $user = User::first();
        $user->password = '123456';
        $user->syncChanges();

        return view('home', ['properties' => $properties]);
    }

    private function available()
    {
    }
}
