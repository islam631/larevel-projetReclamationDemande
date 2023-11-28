<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Demande extends Controller
{
    public function getPageDm(){
        return view('Demande');
    }
}
