<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name','price','image','stock', 'description',
    ];

    public function seller(){
        return $this->belongsTo('App\Seller','seller_id');
    }
}
