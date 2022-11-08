<?php

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

Auth::routes();

Route::get('UserProfile','Backend\UserController@viewprofile')->name('Profile');
Route::get('/home', 'HomeController@index')->name('home');

//Route::get('admin/home', 'HomeController@adminHome')->name('admin.home');



Route::get('issuedpage', 'DashboardController@issuedbook')->name('issuedpage');
Route::get('reservedpage', 'DashboardController@reserved')->name('reservedpage');
Route::get('overduepage', 'DashboardController@overdue')->name('overduepage');
Route::get('publisher', 'DashboardController@publisher')->name('publisher');
Route::get('author', 'DashboardController@author')->name('author');
Route::get('booklists', 'DashboardController@booklists')->name('booklist');
Route::get('memberlist', 'DashboardController@memberlist')->name('memberlist');



//Profile Controller
Route::get('UserProfile','UserController@viewprofile')->name('Profile');
Route::post('UpdateProfile','UserController@update_account');
Route::post('UserProfile','UserController@updateAvatar');

//User Control

Route::get('Booklists','UserController@bookslist')->name('Booklists');
Route::get('authbookcirculation','UserController@Authbookcirculation')->name('authbookcirculation');
Route::get('authfines','UserController@Authfines')->name('fines');

