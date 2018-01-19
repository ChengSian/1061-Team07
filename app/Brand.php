<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Brand extends Model
{
    protected $fillable = [
            'brand'
            
    ];
    use softDeletes;
     protected $dates = ['deleted_at'];
   public function phones()
    {
       return $this->hasMany('App\Phone');
        
    }
}
