<?php

use App\Http\Controllers\Admin\OptionController;
use App\Http\Controllers\Admin\PropertyController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect()->route('home');
});
Route::prefix('fo')->group(function () {

    $idRegex = '[0-9]+';
    $slugRegex = '[0-9a-z\-]+';

    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/about-us', [HomeController::class, 'aboutUs'])->name('about-us');
    Route::get('/properties', [HomeController::class, 'properties']);

    Route::get('/goods', [\App\Http\Controllers\PropertyController::class, 'index'])->name('fo.goods');

    Route::get('/biens/{slug}-{property}', [\App\Http\Controllers\PropertyController::class, 'show'])
        ->name('property.show')
        ->where([
            'property' => $idRegex,
            'slug' => $slugRegex,
        ]);
    Route::post('/property/{property}/contact', [PropertyController::class, 'contact'])->name('property.contact')
        ->where([
            'property' => $idRegex,
        ]);

    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::prefix('admin')->middleware(['auth', 'verified'])->name('admin.')->group(function () {
        Route::resource('property', PropertyController::class)->except(['show']);
        Route::resource('option', OptionController::class)->except(['show']);
    });

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });
});

require __DIR__ . '/auth.php';
