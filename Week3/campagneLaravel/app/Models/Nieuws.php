<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Nieuws extends Model
{
    protected $table = "nieuws";
    public $primaryKey = 'ID';
    public $timestamps = false;
}
