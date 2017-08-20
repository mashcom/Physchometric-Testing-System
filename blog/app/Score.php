<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
     protected $guarded = [];


     public function question(){
     	return $this->belongsTo('App\TestQuestion','question_id','id');
     }

     public function test(){
     	return $this->belongsTo('App\Test');
     }
}
