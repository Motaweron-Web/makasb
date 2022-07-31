<?php

use Illuminate\Support\Facades\Route;
use Laravel\Socialite\Facades\Socialite;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

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


Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ], function () {

    Route::get('/', 'Site\HomeController@index')->name('/');

############# User Auth ##################
    Route::get('register', 'Site\AuthController@register')->name('register');
    Route::POST('UserRegistration', 'Site\AuthController@UserRegistration')->name('UserRegistration');
    Route::get('login', 'Site\AuthController@login')->name('login');
    Route::post('postLogin', 'Site\AuthController@postLogin')->name('postLogin');
    Route::get('logout', 'Site\AuthController@logout')->name('logout');

    Route::group(['middleware' => 'auth:user', 'namespace' => 'Site'], function () {
        Route::get('homepage', 'HomeController@homepage')->name('homepage');
        Route::get('MySites', 'HomeController@MySites')->name('MySites');
        Route::get('AddSite', 'HomeController@AddSite')->name('AddSite');
        Route::get('subscription', 'HomeController@subscription')->name('subscription');
        Route::get('buyPoints', 'HomeController@buyPoints')->name('buyPoints');


        ##### Facebook ####
        Route::get('facebookShare', 'FacebookController@facebookShare')->name('facebookShare');

        #### My Sites #####
        Route::post('publishMySite', 'HomeController@publishMySite')->name('publishMySite');
        Route::post('deleteMySite', 'HomeController@deleteMySite')->name('deleteMySite');
    });
});


