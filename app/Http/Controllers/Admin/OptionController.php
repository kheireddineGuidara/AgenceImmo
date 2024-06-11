<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\OptionFormRequest;
use App\Models\Option;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OptionController extends Controller
{

    public function index()
    {
        return view('admin.options.index', [
            'options' => Option::paginate(25),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $option = new Option();
        return view('admin.options.form', [
            'option' => $option
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(OptionFormRequest $request,)
    {
        $option = new Option($request->validated());
        $option->user_id = Auth::id();
        $option->save();
        return to_route('admin.option.index')
            ->with('success', "L'option a bien été créé");
    }


    public function edit(Option $option)
    {
        $user = Auth::user();
        if ($user->role == 'admin' || $user->id == $option->user_id) {
            return view('admin.options.form', [
                'option' => $option
            ]);
        } else {
            return redirect()->route('admin.option.index')
                ->with('error', 'Vous n\'avez pas la permission de modifier cette option.');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(OptionFormRequest $request, Option $option)
    {
        $user = Auth::user();

        if ($user->role == 'admin' || $user->id == $option->user_id) {
            $option->update($request->validated());
            return to_route('admin.option.index')
                ->with('success', "L'option a bien été modifié");
        } else {
            return redirect()
                ->route('admin.option.index')
                ->with('error', 'Vous n\'avez pas la permission de modifier cette option.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Option $option)
    {
        $option->delete();
        return to_route('admin.option.index')
            ->with('success', "L'option a bien été supprimée");

    }
}
