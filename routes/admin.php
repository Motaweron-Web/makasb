<?php

use Illuminate\Support\Facades\Route;



Route::group(['prefix'=>'admin'],function (){
    Route::get('login', 'AuthController@index')->name('admin.login');
    Route::POST('login', 'AuthController@login')->name('admin.login');
});

Route::group(['prefix'=>'admin','middleware'=>'auth:admin'],function (){
    Route::get('/', function () {
        return view('Admin/index');
    })->name('adminHome');

    #### Admins ####
    Route::resource('admins','AdminController');
    Route::POST('delete_admin','AdminController@delete')->name('delete_admin');
    Route::get('my_profile','AdminController@myProfile')->name('myProfile');


    #### Services ####
    Route::resource('services','ServiceController');
    Route::post('services.delete','ServiceController@delete')->name('services.delete');



    #### User ####
    Route::resource('users','UserController');
    Route::post('usersDelete','UserController@delete')->name('usersDelete');



    #### Sliders ####
    Route::resource('sliders','SliderController');
    Route::post('sliders.delete','SliderController@delete')->name('sliders.delete');


    #### About-us ####
    Route::get('aboutUs','SettingController@aboutUs')->name('aboutUs.index');
    Route::post('updateAbout','SettingController@updateAbout')->name('aboutUs.update');


    #### Admins ####
    Route::resource('allPosts','AllPostsController');
    Route::post('postDelete','AllPostsController@delete')->name('postDelete');
    Route::post('deleteAllSites','AllPostsController@deleteAllSites')->name('deleteAllSites');
    Route::post('siteActivation','AllPostsController@siteActivation')->name('siteActivation');


    #### Auth ####
    Route::get('logout', 'AuthController@logout')->name('admin.logout');



   ### Points #######


   Route::resource('points','PointController');
    Route::POST('delete_point','PointController@delete')->name('delete_point');






});










