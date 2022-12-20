<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CampagneController;
use App\Http\Controllers\LoginController;

Route::get('/blog/', [CampagneController::class, 'blog']);
Route::get('logout/', [LoginController::class, 'logout']);
Route::get('verwijder/{id}', [CampagneController::class, 'verwijder']);
Route::get('/', [CampagneController::class, 'index']);
Route::get('/{id}', [CampagneController::class, 'index']);

Route::post('/', [CampagneController::class, 'index']);
Route::post('/blog/', [CampagneController::class, 'nieuw']);
Route::post('login/', [LoginController::class, 'login']);
Route::post('/bestand/', [CampagneController::class, 'bestand']);

