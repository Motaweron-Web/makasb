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

    Route::group(['middleware' => 'auth:user', 'namespace' => 'Site'], function () {
        Route::get('logout', 'AuthController@logout')->name('logout');
        Route::get('profile', 'AuthController@profile')->name('profile');
        Route::post('edit/myProfile','AuthController@editProfile')->name('admin.edit.myProfile');
        Route::post('edit/myPassword','AuthController@editPassword')->name('admin.edit.myPassword');
        Route::get('delete/myProfile','AuthController@deleteMyProfile')->name('admin.deleteMyProfile');

        Route::get('homepage', 'HomeController@homepage')->name('homepage');
        Route::get('MySites', 'HomeController@MySites')->name('MySites');
        Route::get('AddSite', 'HomeController@AddSite')->name('AddSite');
        Route::get('subscription', 'HomeController@subscription')->name('subscription');
        Route::get('buyPoints', 'HomeController@buyPoints')->name('buyPoints');

        #### My Sites #####
        Route::post('publishMySite', 'HomeController@publishMySite')->name('publishMySite');
        Route::post('deleteMySite', 'HomeController@deleteMySite')->name('deleteMySite');

        ##### Instagram ####
        Route::group(['prefix' => 'instagram'], function () {
            Route::get('followers', 'InstagramController@followers')->name('instagram.followers');
            Route::get('likes', 'InstagramController@likes')->name('instagram.likes');
        });

        ##### Twitter ####
        Route::group(['prefix' => 'twitter'], function () {
            Route::get('tweets', 'TwitterController@tweets')->name('twitter.tweets');
            Route::get('followers', 'TwitterController@followers')->name('twitter.followers');
            Route::get('retweets', 'TwitterController@retweets')->name('twitter.retweets');
            Route::get('likes', 'TwitterController@likes')->name('twitter.likes');
        });

        ##### Youtube ####
        Route::get('youtube/{page}', 'YoutubeController@index')->name('youtube.index');

        ##### Tiktok ####
        Route::get('tiktok/{page}', 'TiktokController@index')->name('tiktok.index');

        ##### SoundCloud ####
        Route::get('soundcloud/{page}', 'SoundcloudController@index')->name('soundcloud.index');

        ##### otherSites ####
        Route::get('otherSites/{page}', 'OtherSitesController@index')->name('otherSites.index');



        ##### Facebook ####
        Route::get('facebookShare', 'FacebookController@facebookShare')->name('facebookShare');
        Route::get('facebookFollowers', 'FacebookController@facebookFollowers')->name('facebookFollowers');
        Route::get('facebookPostLike', 'FacebookController@facebookPostLike')->name('facebookPostLike');
        Route::get('facebookPostShare', 'FacebookController@facebookPostShare')->name('facebookPostShare');


        ##### Payment ####
        Route::get('checkPay', 'HomeController@checkPay')->name('checkPay');
        Route::get('pointsPrices/{id}', 'HomeController@pointsPrices')->name('pointsPrices');

    });

});


##### No Need To Lang
Route::post('checkUserView', 'Site\FacebookController@checkUserView')->name('checkUserView');


