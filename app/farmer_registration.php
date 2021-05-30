<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Model;

class farmer_registration extends Model implements MustVerifyEmail
{
    //
    protected $fillable=['fullname','username','email','mobile','district','postal_code','password','confirm_password'];

    /**
     * @inheritDoc
     */
    public function hasVerifiedEmail()
    {
        // TODO: Implement hasVerifiedEmail() method.
    }

    /**
     * @inheritDoc
     */
    public function markEmailAsVerified()
    {
        // TODO: Implement markEmailAsVerified() method.
    }

    /**
     * @inheritDoc
     */
    public function sendEmailVerificationNotification()
    {
        // TODO: Implement sendEmailVerificationNotification() method.
    }
}
