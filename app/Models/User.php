<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use  HasFactory;

  
    protected $fillable = ['nom','prenom','adress','telephone','email','password',];

   
    protected $hidden = ['created_at','updated_at',];

    
    public $timestamps =true;


}
