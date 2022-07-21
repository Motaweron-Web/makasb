<?php

use Illuminate\Support\Facades\Route;
use Laravel\Socialite\Facades\Socialite;

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

Route::get('/', 'Site\HomeController@index')->name('/');

############# User Auth ##################
Route::get('register', 'Site\AuthController@register')->name('register');
Route::POST('UserRegistration', 'Site\AuthController@UserRegistration')->name('UserRegistration');
Route::get('login', 'Site\AuthController@login')->name('login');
Route::post('postLogin', 'Site\AuthController@postLogin')->name('postLogin');
Route::get('logout', 'Site\AuthController@logout')->name('logout');
