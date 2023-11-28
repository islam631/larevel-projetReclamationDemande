<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class admin extends Model
{
    use HasFactory;

    protected $fillable = ['nom_ad','prenom_ad','email_ad','password_ad',];

   
    protected $hidden = ['created_at','updated_at',];

    
    public $timestamps =true;


}
