<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//get details of a product
Route::post('product','ProductController@getProductById')->middleware('client');

//get product list by seller
Route::post('products-by-seller','ProductController@getProductsBySellerId')->middleware('client');
// Route::get('products-by-seller/{id}','ProductController@getProductsBySellerId');

//get seller details for a product
Route::post('seller-by-product','ProductController@getSellerByProductId')->middleware('client');