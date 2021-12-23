<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

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
use App\Http\Controllers\api\LoginController;
use App\Http\Controllers\api\RegisterController;
use App\Http\Controllers\api\UserController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('login', [LoginController::class, 'Login']);

Route::post('register', [RegisterController::class, 'Register']);
Route::middleware('auth:api')->group( function () {
    Route::post('getuserdata', [UserController::class, 'Getuserdata']);
    Route::post('/userupdate/{id}',[UserController::class,'Userupdate']);
    Route::post('userupdatehobby', [UserController::class, 'Userhobbyupdate']);
    Route::delete('/userdelete/{id}',[UserController::class,'Deleteuser']);
    Route::post('listingbyhobby', [UserController::class, 'Listingbyhobby']);
    
});

