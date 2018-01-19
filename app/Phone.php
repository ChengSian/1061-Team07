<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Phone extends Model
{
    protected $fillable = [
            'brand_id',
            'Phone_name',
            'Colour',
            'Screen_size',
            'Screen_resolution',
            'operating_system',
            'CPU',
            'RAM',
            'ROM',
            'SIM',
            'MicroSD',
            'Front_camera',
            'Main_camera',
            'Communication_agreement',
            'Link_web',
            'specification',
            'Phone_weight',
            'battery'
    ];
 use softDeletes;
 protected $dates = ['deleted_at'];
 
  public function brand()
    {
        return $this->belongsTo('App\Brand');
              
        
    }

}

