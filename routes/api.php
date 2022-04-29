<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportAuthController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ClassesController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\DonorController;
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

Route::post('register', [PassportAuthController::class, 'register'])->name('register');
Route::post('login', [PassportAuthController::class, 'login'])->name('login');

Route::middleware('auth:api')->group(function () {
    Route::resource('posts', PostController::class);
    Route::resource('donors', DonorController::class);
    Route::resource('classes', ClassesController::class);
    Route::post('donors/updatedata', [DonorController::class, 'updateData'])->name('updateData');
    Route::post('classes/updatedata', [ClassesController::class, 'updateData'])->name('updateData');
    Route::post('branches/updatedata', [BranchController::class, 'updateData'])->name('updateData');
    Route::resource('students', StudentController::class);
    Route::resource('branches', BranchController::class);
});
