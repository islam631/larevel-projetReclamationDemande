<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Reclamation extends Controller
{
    public function getPageRec(){
        return view('Reclamation');
    }
}
