<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NamenController;

Route::apiResource('namen', NamenController::class);
// Route::apiResource('functies', FunctieController::class)->parameters(['functies' => 'functie'])->only(['index', 'show']);


// Route::get('/', [NamenController::class, 'index']);
// Route::get('/{id}', [NamenController::class, 'show']);
// Route::post('/', [NamenController::class, 'store']);
// Route::patch('/{id}', [NamenController::class, 'update']);
// Route::delete('/{id}', [NamenController::class, 'destroy']);
