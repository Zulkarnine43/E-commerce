<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customer_registration extends Model
{
    //
    protected $fillable=['fullname','username','email','mobile','district','postal_code','password','confirm_password'];
}
