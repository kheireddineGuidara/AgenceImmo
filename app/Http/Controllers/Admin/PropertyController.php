<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\PropertyFormRequest;
use App\Models\Option;
use App\Models\Property;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\PropertyContactRequest;
use Illuminate\Support\Facades\Mail;
use App\Mail\PropertyContactMail;

class PropertyController extends Controller
{

    public function __construct()
    {
        $this->authorizeResource(Property::class, 'property');
    }

    public function index()
    {
        return view('admin.properties.index', [
            'properties' => Property::orderBy('created_at', 'desc')
                ->paginate(25)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $property = new Property();
        return view('admin.properties.form', [
            'property' => $property,
            'options' => Option::pluck('name', 'id'),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PropertyFormRequest $request,)
    {
        $property = new Property($request->validated());
        $property->user_id = Auth::id();
        $property->save();
        $property->options()->sync($request->validated('options'));
        return to_route('admin.property.index')
            ->with('success', 'Le bien a bien été créé');
    }

    public function edit(Property $property)
    {
        $user = Auth::user();
        if ($user->role == 'admin' || $user->id == $property->user_id) {
            return view('admin.properties.form', [
                'property' => $property,
                'options' => Option::pluck('name', 'id'),
            ]);
        } else {
            return redirect()->route('admin.property.index')
                ->with('error', 'Vous n\'avez pas la permission de modifier cette propriété.');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PropertyFormRequest $request, Property $property)
    {
        $user = Auth::user();

        if ($user->role == 'admin' || $user->id == $property->user_id) {
            $data = $request->validated();
            /** @var UploadedFile|null $image */
            $image = $request->validated('image');
            if ($image !== null && !$image->getError()) {
                $data['image'] = $image->store('property', 'public');
            }
            $property->update($data);
            $property->options()->sync($request->validated('options'));
            return to_route('admin.property.index')
                ->with('success', 'Le bien a bien été modifié');
        } else {
            return redirect()
                ->route('admin.property.index')
                ->with('error', 'Vous n\'avez pas la permission de modifier cette propriété.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Property $property)
    {
        $property->delete();
        return to_route('admin.property.index')
            ->with('success', "Le bien a bien été supprimée");

    }

    public function contact(PropertyContactRequest $request, Property $property)
    {
        $data = $request->validated();

        Mail::to('admin@verified.eu')->send(new PropertyContactMail($property, $data));

        return redirect()->back()->with('success', 'Votre message a été envoyé avec succès.');
    }

}
