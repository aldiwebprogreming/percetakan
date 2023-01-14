<?php

use App\Http\Controllers\Admin;
use App\Http\Controllers\App;
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

Route::get('app/', [App::class, 'index']);
Route::get('admin/', [Admin::class, 'index']);
Route::get('data_kategori', [Admin::class, 'data_kategori']);
Route::post('admin/tambah_kategori', [Admin::class, 'tambah_kategori']);
Route::delete('admin/hapus_kategori', [Admin::class, 'hapus_kategori']);
Route::put('admin/edit_kategori', [Admin::class, 'edit_kategori']);
Route::get('data_produk', [Admin::class, 'data_produk']);
Route::post('admin/tambah_produk', [Admin::class, 'tambah_produk']);
Route::delete('admin/hapus_produk', [Admin::class, 'hapus_produk']);
