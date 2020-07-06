<?php

use Illuminate\Support\Facades\Route;
use App\Video;
use App\Blog;
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
	$Video=Video::all(); 
	$post=Blog::all(); 
	
    return view('welcome',compact('Video','post'));
});
Route::get('/video-details/{video_id}', function ($id) {
	$Videos=Video::where('id',$id)->first(); 
	
    return view('video-details',compact('Videos'));
});
Route::get('/post-details/{video_id}', function ($id) {
	$Blog=Blog::where('id',$id)->first(); 
	
    return view('post-details',compact('Blog'));
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/from', 'backendController@from')->name('from');
Route::post('/frompost', 'backendController@fromPost')->name('fromPost');
Route::get('/postview', 'backendController@PostView')->name('PostView');
Route::get('/video', 'backendController@Video')->name('Video');
Route::post('/videopost', 'backendController@VideoPost')->name('VideoPost');
Route::get('/videoview', 'backendController@VideoView')->name('VideoView');
Route::get('/statusupdate/{video_id}', 'backendController@StatusUpdate')->name('StatusUpdate');
Route::get('/statusupdatep/{video_id}', 'backendController@StatusUpdateP')->name('StatusUpdateP');
Route::get('/updatep/{post_id}', 'backendController@StatusUpdateunp')->name('StatusUpdateunp');
Route::get('/updateunp/{post_id}', 'backendController@StatusUpdatepub')->name('StatusUpdatepub');
