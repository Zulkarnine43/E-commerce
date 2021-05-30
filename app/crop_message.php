<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class crop_message extends Model
{
    //
    protected $fillable=['crop_id','product_name','farmer_email','cust_id','name','email','mobile','message'];
}
