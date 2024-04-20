<?php

use App\Http\Controllers\MovieController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SupportController;

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

Route::get('/', [MovieController::class, 'home'])->name('root');
Route::get('/about', function () {
    return view('pages.about');
})->name('root.about');
Route::get('/contact', function () {
    return view('pages.contact');
})->name('root.contact');
Route::resource('movie', MovieController::class);


//User Routes
// Route::get('user', [ProfileController::class, 'index'])->middleware(['auth'])->middleware(['auth', 'verified'])->name('user.dashboard');
Route::get('user', [ProfileController::class, 'index'])->middleware(['auth'])->name('user.dashboard');
// })->->name('dashboard');

Route::middleware('auth')->prefix('user')->name('user.')->group(function () {
    Route::get('/profile', [ProfileController::class, 'view'])->name('profile.view');
    Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::put('/profile/edit', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //Support Routes
    Route::get('support/{id}/delete', [SupportController::class, 'destroy'])->name('support.destroy');
    Route::resource('support', SupportController::class);
    //Interest Routes
    // Route::get('/profile/interests', [ProfileController::class, 'interest'])->name('movie.interests');
    Route::get('/profile/interests', [ProfileController::class, 'interest'])->name('interest.add');
    Route::get('/profile/interestedit/{id}', [ProfileController::class, 'editinterest'])->name('interest.edit');
    Route::put('/profile/interestedit/{id}', [ProfileController::class, 'editUpdate'])->name('interest.editUpdate');
    Route::get('/profile/interesteditRating/{id}', [ProfileController::class, 'editinterestrating'])->name('interest.rating');
    Route::put('/profile/interesteditRating/{id}', [ProfileController::class, 'ratingUpdate'])->name('interest.ratingUpdate');
    Route::post('/profile/intereststore', [ProfileController::class, 'intereststore'])->name('interest.store');
});

require __DIR__ . '/auth.php';
require __DIR__ . '/admin.php';
require __DIR__ . '/staff.php';
