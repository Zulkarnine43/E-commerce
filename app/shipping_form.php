<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class shipping_form extends Model
{
    //
    protected $fillable=['fullname','email','phone_number','address','payment_type','product_name','product_price','product_quantity','total_price'];
}
