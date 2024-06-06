<?php

namespace App\Http\Controllers;

use App\Models\Property;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{

    public function index()
    {
        $properties = Property::available()->orderBy('created_at', 'desc')->limit(4)->get();
        /** @var User $user */
        $user = User::first();
        $user->password = Hash::make('000000');
        $user->save();

        return view('home', ['properties' => $properties]);
    }

    private function available()
    {
    }
}
