<?php

use App\Http\Controllers\UsuarioController;
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
    return view('usuario.form');
});


Route::post('/usuario', [UsuarioController::class, 'save'])->name('usuario.save');
Route::get('/usuarios', [UsuarioController::class, 'listar'])->name('usuario.listar');
Route::get('/usuario/{id?}', [UsuarioController::class, 'form'])->name('usuario.form');
Route::delete('/usuario/{id}', [UsuarioController::class, 'delete'])->name('usuario.delete');
Route::put('/usuario/{id}', [UsuarioController::class, 'save'])->name('usuario.update');
