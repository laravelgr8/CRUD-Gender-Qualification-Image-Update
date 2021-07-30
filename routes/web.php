<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/',[UserController::class,'index'])->name('index');
Route::post('insert',[UserController::class,'insert'])->name('signup');
Route::get('show',[UserController::class,'show'])->name('show');
Route::get('edit',[UserController::class,'edit'])->name('edit');
Route::post('update',[UserController::class,'update'])->name('update');
Route::post('upload',[UserController::class,'upload'])->name('upload');
