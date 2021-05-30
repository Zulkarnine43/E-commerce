<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class add_crop extends Model
{
    //
    protected $fillable=['email','product_name','crop_type','product_quantity','product_price','product_description','long_description','last_date_bidding','product_image'];
}
