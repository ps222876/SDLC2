<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Gebruiker extends Model
{
    protected $table = "gebruiker";
    public $primaryKey = 'ID';
    public $timestamps = false;
}
