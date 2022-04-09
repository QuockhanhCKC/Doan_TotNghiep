<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\DetailController;
use App\Http\Controllers\Client\ProductController;
use App\Http\Controllers\Client\loginregisterController;
use App\Http\Controllers\Client\CartController;
use App\Http\Controllers\Client\ContactController;
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


Route::group(['namespace'=>'Client'],function(){
    Route::get('/', [HomeController::class,'index'])->name('Home');
    Route::get('/about', [HomeController::class,'about'])->name('About');
    Route::get('/detail', [DetailController::class,'index'])->name('Detail');
    Route::get('/products', [ProductController::class,'index'])->name('Products');
    Route::get('/loginregister', [loginregisterController::class,'index'])->name('loginregister');
    Route::get('/Cart', [CartController::class,'index'])->name('Cart');
    Route::get('/Contact', [ContactController::class,'index'])->name('Contact');
});