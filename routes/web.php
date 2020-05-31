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
Route::get('/orders','OrderController@create');
Route::post('/orders/store','OrderController@store');
Route::post('/paytm-callback','OrderController@paytmCallback');

//Refund
Route::get('/refund','OrderController@refund');
Route::get('/refund/process/{id?}','OrderController@refundamount');
Route::post('/refund/execute','OrderController@refunding');
Route::get('/refund/all/','OrderController@refundlist');