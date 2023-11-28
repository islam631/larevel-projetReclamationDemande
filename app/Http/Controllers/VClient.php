<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VClient extends Controller
{
    public function VClient(){
        return view('adminPages.VClients');
    }
}
