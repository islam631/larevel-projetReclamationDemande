<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ControllPage;
use App\Http\Controllers\Reclamation;
use App\Http\Controllers\Demande;
use App\Http\Controllers\VClient;
use App\Http\Controllers\VReclamation;
use App\Http\Controllers\Vadmin;
use App\Http\Controllers\VDemande;
use App\Http\Controllers\AdminController;


Route::get('/',function(){return view('home');});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




Route::group(['prefix'=>'Client'],function(){   

    Route::get('/Demande',[Demande::class, 'getPageDm'])->name('Demande')->middleware('auth');

    Route::get('/Reclamation',[Reclamation::class, 'getPageRec'])->name('Reclamation')->middleware('auth');
    
});




Route::group(['prefix'=>'admin'],function(){   

    Route::get('/VClients',[VClient::class, 'VClient'])->name('VClient');

    Route::get('/VReclamation',[VReclamation::class, 'VReclamation'])->name('VReclamation');

    Route::get('/VDemande',[VDemande::class, 'VDemande'])->name('VDemande');

    Route::get('/Vadmin',[Vadmin::class, 'Vadmin'])->name('Vadmin');

    
    
});


Route::get('/admin/tr',[AdminController::class, 'showLoginForm'])->name('admin');



