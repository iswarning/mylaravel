<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Spec extends Model
{
    protected $table = 'specs';
    protected $fillable = ['screen','cam_front','cam_rear','ram','storage','cpu','gpu','pin','os','sim'];
}
