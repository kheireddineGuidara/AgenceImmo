<?php

namespace App\Http\Controllers;

use App\Models\Property;
use App\Models\User;
use App\Weather;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function __construct(private Weather $weather)
    {
    }

    public function index()
    {
        $properties = Property::available()->orderBy('created_at','desc')->limit(4)->get();
        return view('home', ['properties' => $properties]);
    }
}
