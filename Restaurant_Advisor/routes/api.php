<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RestaurantsController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\MenusController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/user/{id}', [ UsersController::class, 'show' ])->name('user.show');
Route::get('/users', [ UsersController::class, 'index' ]  )->name('users');
Route::post('/register', [ UsersController::class, 'register' ]  )->name('creer.user');
Route::post('/auth', [ UsersController::class, 'auth' ]  )->name('connexion.user');



Route::put('/restaurant/{id}', [ RestaurantsController::class, 'update' ])->name('restaurant.update');
Route::post('/restaurant', [ RestaurantsController::class, 'store' ]  )->name('creer.restaurant');
Route::get('/restaurants', [ RestaurantsController::class, 'index' ]  )->name('restaurants');
Route::get('/restaurant/{id}', [ RestaurantsController::class, 'show' ])->name('restaurant.show');
Route::delete('/restaurant/{id}', [ RestaurantsController::class, 'delete' ])->name('restaurant.delete');



Route::get('/menus', [ MenusController::class, 'index' ]  )->name('menus');
Route::get('/restaurant/{id}/menus', [ MenusController::class, 'show' ]  )->name('menu');
Route::post('/restaurant/{id}/menu', [ MenusController::class, 'store' ]  )->name('creer.menu');
Route::put('/restaurant/{id}/menu/{idd}', [ MenusController::class, 'update' ]  )->name('modifier.menu');
Route::delete('/restaurant/{id}/menu/{idd}', [ MenusController::class, 'delete' ]  )->name('supprimer.menu');

