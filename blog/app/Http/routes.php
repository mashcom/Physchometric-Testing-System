<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();


Route::group(['middleware'=>'auth'],function(){
	Route::get('/home', 'HomeController@index');
	Route::resource('/test','TestController');
	Route::resource('/score','ScoreController');
	Route::resource('/user','UserController');
	Route::resource('/timer','TimerController');

	Route::group(['middleware'=>'admin'],function(){
		Route::resource('/admin/test','TestQuestionController');
		Route::resource('/admin/reports','ReportController');
		Route::get('/admin/test_report/{test_id}/user/{user_id}','ScoreController@show');
		Route::get('/admin/compile/report/{id}','ReportController@compile');
	});

	Route::get('/auth/success',function(){
		if(Auth::user()->is_admin){
			return view('admin.index');
		}
		else{
			return redirect('/home');
		}
	});

});
