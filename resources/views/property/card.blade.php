<div class="card">
    <img src="/storage/{{$property->image}}" style="max-width: 100%; height: auto;" class="card-img-top" alt="Image de la propriété">
    <div class="card-body">
        <h5 class="card-title">
            <a href="{{ route('property.show',['slug' => $property->getSlug(), 'property' => $property]) }}">{{ $property->title }}</a>
        </h5>
        <p class="card-text">{{ $property->surface }}m² - {{ $property->address }} - {{ $property->city }}</p>
        <div class="text-primary" style="font-size: 1.4rem; font-weight: bold">
            {{ number_format($property->price, thousands_separator: ' ') }} DNT
        </div>
    </div>
</div>
