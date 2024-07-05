@extends('base-fo')
@section('content')
    <div class="container mt-5">

<form action="" method="post" class="vstack gap-3">

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
    <div>
        <button class="btn btn-primary">
            Nous contacter
        </button>
    </div>
</form>
</div>

@endsection
