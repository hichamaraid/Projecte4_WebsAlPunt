<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::resource('categories', App\Http\Controllers\CategoryController::class);


Route::resource('comments', App\Http\Controllers\CommentController::class);


Route::resource('courses', App\Http\Controllers\courseController::class);


Route::resource('courseUsers', App\Http\Controllers\CourseUserController::class);


Route::resource('payments', App\Http\Controllers\PaymentController::class);


Route::resource('users', App\Http\Controllers\UserController::class);


Route::resource('views', App\Http\Controllers\ViewController::class);


Route::resource('items', App\Http\Controllers\ItemController::class);


Route::resource('roles', App\Http\Controllers\RoleController::class);


Route::resource('coupons', App\Http\Controllers\CouponController::class);


Route::get('/Nosotros', [App\Http\Controllers\nosotrosController::class, 'NosotrosCtrl'])->name("nosotros");


Route::get('/Contacto', [App\Http\Controllers\contactoController::class, 'ContactoCtrl'])->name("contacto");


Route::get('/Welcome', [App\Http\Controllers\welcomeController::class, 'WelcomeCtrl'])->name("welcome");



