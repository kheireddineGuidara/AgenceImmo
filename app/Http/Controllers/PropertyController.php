<?php

namespace App\Http\Controllers;

use App\Events\ContactRequestEvent;
use App\Http\Requests\SearchPropertiesRequest;
use App\Models\Property;
use App\Http\Requests\PropertyContactRequest;

class PropertyController extends Controller
{
    public function index(SearchPropertiesRequest $request)
    {
        $query = Property::query()->orderBy('created_at', 'desc');
        $input = $request->validated();

        if ($price = $input['price'] ?? null) {
            $query = $query->where('price', '<=', $price);
        }
        if ($surface = $input['surface'] ?? null) {
            $query = $query->where('surface', '>=', $surface);
        }
        if ($rooms = $input['rooms'] ?? null) {
            $query = $query->where('rooms', '>=', $rooms);
        }
        if ($title = $input['title'] ?? null) {
            $query = $query->where('title', 'like', "%{$title}%");
        }

        $properties = $query->paginate(16)->appends($input);

        return view('fo.goods', [
            'properties' => $properties,
            'input' => $input
        ]);
    }


    public function show(string $slug, Property $property)
    {
        $expectedSlug = $property->getSlug();
        if ($slug != $expectedSlug) {
            return to_route('property.show', [
                'slug' => $expectedSlug,
                'property' => $property
            ]);
        }
        return view('property.show',
            [
                'property' => $property
            ]);
    }

    public function contact(Property $property, PropertyContactRequest $request)
    {
        event(new ContactRequestEvent($property,$request->validated()));
        return back()->with('succes', 'Votre demande de contact a bien été envoyé');
    }
}
