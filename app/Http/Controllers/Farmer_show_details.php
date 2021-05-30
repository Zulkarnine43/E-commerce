<?php

namespace App\Http\Controllers;

use App\add_crop;
use App\crop_message;
use App\customer_registration;
use App\farmer_registration;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class Farmer_show_details extends Controller
{
    //
    public function Farmer_show_detail($email){
        $all_crops=add_crop::where('email',$email)->get();
        return view('farmer.Farmer_show_details',['allCrops'=>$all_crops]);
    }

    public function farmer_crop_details($id){
        $crop = add_crop::find($id);
        $cust=Session::get('email');
        $messages=crop_message::where('crop_id',$crop->id)->get();
        $farmer=farmer_registration::where('email',$crop->email)->first();
        return view('customer.collection_details',['crop'=>$crop,'farmer'=>$farmer,'cust'=>$cust,'messages'=>$messages]);
    }
}
