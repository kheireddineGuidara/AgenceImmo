@extends('base-fo')
@section('content')

<form action="{{ route('property.contact',$property) }}" method="post" class="vstack gap-3">

    @csrf
    <div class="row">
        @include('shared.input', [ 'class' => 'col','name'=>'firstname','label'=>'Prénom'])
        @include('shared.input', [ 'class' => 'col','name'=>'lastname','label'=>'Nom'])
    </div>
    <div class="row">
        @include('shared.input', [ 'class' => 'col','name'=>'phone','label'=>'Téléphone'])
        @include('shared.input', [ 'type' => 'email','class' => 'col','name'=>'email','label'=>'Email'])
    </div>
    @include('shared.input', [ 'type' => 'textarea','class' => 'col','name'=>'message','label'=>'Votre message'])
    @if($property->image)
        <img style="width: 100%; height: 150px; object-fit: cover;"
             src="/storage/{{$property->image}}"
             alt="">
    @endif
    <div>
        <button class="btn btn-primary">
            Nous contacter
        </button>
    </div>
</form>
</div>

@endsection
