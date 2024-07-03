<?php

namespace App\Http\Controllers;

use App\Models\Property;

class HomeController extends Controller
{
    public function __construct()
    {
    }

    public function index()
    {
        return view('fo.index');

    }
    public function aboutUs()
    {
        return view('fo.aboutUs');

    }

    public function properties()
    {
        $properties = Property::available()->orderBy('created_at', 'desc')->limit(4)->get();
        return view('home', ['properties' => $properties]);
    }
}
