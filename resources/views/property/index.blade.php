@extends('base')

@section('title','Tous nos biens')

@section('content')

    <div class="bg-light p-5 nb-5 text-center">
        <form action="" method="get" class="container d-flex gap-2">
            <input type="number" placeholder="Surface minimum" class="form-control" name="surface"
                   value="{{ $input['surface'] ?? '' }}">
            <input type="number" placeholder="Nombre de piéce minimum" class="form-control" name="rooms"
                   value="{{ $input['rooms'] ?? '' }}">
            <input type="number" placeholder="Budget max" class="form-control" name="price"
                   value="{{ $input['price'] ?? '' }}">
            <input placeholder="Mot clé" class="form-control" name="title"
                   value="{{ $input['title'] ?? '' }}">
            <button class="btn btn-primary btn-sm flex-grow-0">
                Rechercher
            </button>
        </form>
    </div>

    <div class="container">
        <div class="row">
            @forelse($properties as $property)
                <div class="col-3  mb-4">
                    @include('property.card')
                </div>
            @empty
                <div class="col">
                    <i class="bi bi-0-circle-fill">Aucun bien ne correspond à votre recherche
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-0-circle-fill" viewBox="0 0 16 16">
                            <path
                                d="M8 4.951c-1.008 0-1.629 1.09-1.629 2.895v.31c0 1.81.627 2.895 1.629 2.895s1.623-1.09 1.623-2.895v-.31c0-1.8-.621-2.895-1.623-2.895"/>
                            <path
                                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-8.012 4.158c1.858 0 2.96-1.582 2.96-3.99V7.84c0-2.426-1.079-3.996-2.936-3.996-1.864 0-2.965 1.588-2.965 3.996v.328c0 2.42 1.09 3.99 2.941 3.99"/>
                        </svg>
                    </i>
                </div>
            @endforelse
        </div>
        <div class="my-4">
            {{ $properties->appends(request()->query())->links() }}
        </div>
    </div>

@endsection
