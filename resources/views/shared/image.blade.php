@php
    $class ??= null;
    $name ??= '';
    $label ??= ucfirst($name);
@endphp
<div @class(['form-group', $class])>
    <label for="{{ $name }}">{{ $label }}</label>
    <input type="file" class="form-control-file @error($name) is-invalid @enderror" id="{{ $name }}" name="{{ $name }}">
    @error($name)
    <div class="invalid-feedback">
        {{ $message }}
    </div>
    @enderror
</div>
