<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    {{-- existing head content --}}
</head>
<body>
@stack('modals')
@livewireScripts
@livewire('notifications')

@include('layouts.partials.notifications') {{-- Include the notifications partial here --}}

@stack('scripts')
</body>
</html>
