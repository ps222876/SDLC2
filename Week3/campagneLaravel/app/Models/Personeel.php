<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Personeel extends Model
{
    protected $table = "personeel";
    public $primaryKey = 'ID';
    public $timestamps = false;
}
