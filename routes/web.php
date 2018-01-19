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

/*oute::get('/', function () {
    return view('welcome');
});*/

// phone route

Route::group(['as'=>'phones.','prefix'=>'phones'], function () {
Route::get('/', 'phonesController@index')
    ->name('index');
    
Route::get('/upshow', 'PhonesController@upshow')
    ->name('upshow');
    
Route::get('/{id}/show', 'PhonesController@show')
    ->where('id', '[0-9]+')
    ->name('show'); 		    

Route::get('/create', 'PhonesController@create')
    ->name('create');
    
Route::post('/store', 'PhonesController@store')
    ->name('store');
    
Route::get('/{id}/edit', 'PhonesController@edit')
    ->where('id', '[0-9]+')
    ->name('edit');    
    
Route::post('/update','PhonesController@update'); 

Route::get('/{id}/delete', 'PhonesController@destroy')
    ->where('id', '[0-9]+')
    ->name('destroy');
    
Route::get('/{id}/edelete', 'PhonesController@delete')
    ->where('id', '[0-9]+')
    ->name('delete');    
    
Route::get('/quit', 'PhonesController@quit')
    ->name('quit');
    
Route::get('/{id}/restore', 'PhonesController@restore')
    ->where('id', '[0-9]+')
    ->name('restore');    
});







/*Route::get('/phones', 'phonesController@index')
    ->name('phones.index');

Route::get('/phones/create', 'PhonesController@create')
    ->name('phones.create');
    
Route::post('/phones/store', 'PhonesController@store')
    ->name('phones.store');
    
Route::get('/phones/{id}/edit', 'PhonesController@edit')
    ->where('id', '[0-9]+')
    ->name('phones.edit');    
    
Route::post('/phones/update','PhonesController@update'); 

Route::get('/phones/{id}/delete', 'PhonesController@destroy')
    ->where('id', '[0-9]+')
    ->name('phones.destroy');
    
Route::get('/phones/quit', 'phonesController@quit')
    ->name('phones.quit');
    
Route::get('/phones/{id}/restore', 'phonesController@restore')
    ->where('id', '[0-9]+')
    ->name('phones.restore');   */ 
    
    
    
    
/*Route::get('/phones/{id}', 'phonesController@show')
    ->where('id', '[0-9]+')
    ->name('teachers.show');*/
    
/*Route::patch('/teachers/{id}', 'TeachersController@update')
    ->where('id', '[0-9]+')
    ->name('teachers.update');*/



// brand route

Route::group(['as'=>'brands.','prefix'=>'brands'], function () {
Route::get('/', 'BrandsController@index')
    ->name('index');  
		  
Route::get('/upshow', 'BrandsController@upshow')
    ->name('upshow');
    
Route::get('/{id}/showb', 'BrandsController@showb')
    ->where('id', '[0-9]+')
    ->name('showb'); 
    
Route::get('/create', 'BrandsController@create')
    ->name('create');
    
Route::post('/store', 'BrandsController@store')
    ->name('store');   
		 
Route::get('/{id}', 'BrandsController@show')
    ->where('id', '[0-9]+')
    ->name('show');

Route::get('/{id}/edit', 'BrandsController@edit')
    ->where('id', '[0-9]+')
    ->name('edit');
    
Route::post('/update','BrandsController@update');

Route::get('/{id}/delete', 'BrandsController@destroy')
    ->where('id', '[0-9]+')
    ->name('destroy');
    
Route::get('/{id}/edelete', 'BrandsController@delete')
    ->where('id', '[0-9]+')
    ->name('delete');
    
Route::get('{id}/restore', 'BrandsController@restore')
    ->where('id', '[0-9]+')
    ->name('restore');
    
Route::get('/quit', 'BrandsController@quit')
    ->name('quit');
});







/*Route::get('/brands', 'BrandsController@index')
    ->name('brands.index');

Route::get('/brands/create', 'BrandsController@create')
    ->name('brands.create');
    
Route::post('/brands/store', 'BrandsController@store')
    ->name('brands.store');   
		 
Route::get('/brands/{id}', 'BrandsController@show')
    ->where('id', '[0-9]+')
    ->name('brands.show');

Route::get('/brands/{id}/edit', 'BrandsController@edit')
    ->where('id', '[0-9]+')
    ->name('brands.edit');
    
Route::post('/brands/update','BrandsController@update');

Route::get('/brands/{id}/delete', 'BrandsController@destroy')
    ->where('id', '[0-9]+')
    ->name('brands.destroy');
    
Route::get('/brands/{id}/restore', 'BrandsController@restore')
    ->where('id', '[0-9]+')
    ->name('brands.restore');
    
Route::get('/brands/quit', 'BrandsController@quit')
    ->name('brands.quit');   */ 
/*Route::patch('/students/{id}', 'StudentsController@update')
    ->where('id', '[0-9]+')
    ->name('students.update');*/





?>
