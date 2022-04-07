<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\DetailController;
use App\Http\Controllers\Client\ProductController;
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
    Route::get('/index', [HomeController::class,'index']);
    Route::get('/detail', [DetailController::class,'index']);
    Route::get('/products', [ProductController::class,'index']);
});