<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menues extends Model
{
  protected $table = 'menues';

  public function sub_menu(){
      return $this->hasMany('App\Menues', 'sub_menu');
  }
}
