<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\add_crop;
use App\crop_message;
use App\farmer_registration;

class farmerdetailsController extends Controller
{
    //
    public function farmer_home_details($id){
        $crop = add_crop::find($id);
        $messages=crop_message::where('crop_id',$crop->id)->get();
        $farmer=farmer_registration::where('email',$crop->email)->first();
        return view('farmer.collection_details',['crop'=>$crop,'farmer'=>$farmer,'messages'=>$messages]);
    }
}
