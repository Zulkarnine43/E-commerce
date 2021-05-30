<?php

namespace App\Http\Controllers;

use App\add_crop;
use App\cust_message;
use App\farmer_registration;
use Illuminate\Http\Request;

class replymessageController extends Controller
{
    //
    public function confirm_reply($id,$product_name,$farmer_email){
        $crop=add_crop::find($id);
        $farmer=farmer_registration::where('email',$crop->email)->first();
        return view('message.reply_message',['crop'=>$crop,'farmer'=>$farmer]);
    }

    public function cust_message(Request $request){
                 $msg=new cust_message();
                 $msg->crop_id=$request->crop_id;
                 $msg->product_name=$request->product_name;
                 $msg->farmer_email=$request->farmer_email;
                 $msg->message=$request->message;
                 $msg->save();
                 return redirect('/cust/message');
    }
}
