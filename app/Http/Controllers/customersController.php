<?php

namespace App\Http\Controllers;

use App\add_crop;
use App\crop_message;
use App\cust_message;
use App\customer_registration;
use App\farmer_registration;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;

class customersController extends Controller
{
    //
    public function customer_register(){
        return view('customer.customer_register');
    }
        public function CustregisterSave(Request $request){

            $this->validate($request,['email'=>'required|email'],[
                'email.required'=>'Email cannot be empty','email'=>'Email format is not valid.'
            ]);

          $this->validate($request,[
              'fullname'=>'required|alpha_dash',
              'username'=>'required|alpha_dash',
              'mobile'=>'required|regex:/(0)[0-9]/|not_regex:/[a-z]/|min:9',
              'district'=>'required',
              'postal_code'=>'required|max:99999|integer',
              'password'=>[
                  'required',
                  'string',
                  'min:6',             // must be at least 6 characters in length
                  'regex:/[a-z]/',      // must contain at least one lowercase letter
                  'regex:/[A-Z]/',      // must contain at least one uppercase letter
                  'regex:/[0-9]/',      // must contain at least one digit
              ],
              //'confirm_password'=>'required|Max:10|Min:5'
              'confirm_password' =>'required|same:password'
          ]);
            $regis = new customer_registration();
            $regis->fullname = $request->fullname;
            $regis->username = $request->username;
            $regis->email = $request->email;
            $regis->mobile = $request->mobile;
            $regis->district = $request->district;
            $regis->postal_code = $request->postal_code;
            $regis->password = encrypt( $request->password);
            $regis->confirm_password = encrypt($request->confirm_password);
            $regis->save();

            /*Session::put([
                'fullname'=>$request->fullname,
                'username'=>$request->username,
                'email'=>$request->email,
                'mobile'=>$request->mobile,
                'district'=>$request->district,
                'postal_code'=>$request->postal_code,
                'password'=>$request->password,
                'confirm_password'=>$request->confirm_password
            ]);*/

            $data=$request->toArray();
            Mail::send('customer.verification_mail',$data,function($message) use ($data){
                $message->to($data['email']);
                $message->subject('verification_mail');
            });

            return redirect('/customer/register')->with('verify','Please Verify Your Email Account');

    }

    public function registerVerify(){

       /* $regis = new customer_registration();
        $regis->fullname = Session::get('fullname');
        $regis->username = Session::get('username');
        $regis->email = Session::get('email');
        $regis->mobile = Session::get('mobile');
        $regis->district = Session::get('district');
        $regis->postal_code = Session::get('postal_code');
        $regis->password =encrypt( Session::get('password'));
        $regis->confirm_password =encrypt(Session::get('confirm_password'));
        $regis->save();*/


        return view('customer.registerVerify');
    }


    public function customer_login(){
        return view('customer.customer_login');
    }

    public function cust_login_check(Request $request){
        $password=encrypt( $request->password);

        $customer = customer_registration::where('email',$request->email )->first();
        $customer2= customer_registration::where('password',$password)->get();

        if($customer && $customer2){
            Session::put('email',$customer);
            Session::put('cust_name',$customer->fullname);
            Session::put('cust_district',$customer->district);
            return redirect('/customer/page/home');
        }
        else {
            return redirect('/customer/login')->with('message', 'required valid password');
        }
    }

    public function customer_home_page(){
        return view('customer.customer_home_page');
    }
    public function farmer_info(){
        $farm_infos=farmer_registration::all();
        return view('customer.farmer_view',['farm_infos'=>$farm_infos]);
    }
    public function Collection_Info(){
        $allCrops=add_crop::all();
        return view('customer.collection_info',['allCrops'=>$allCrops]);
    }
    public function crop_details($id){
        $crop = add_crop::find($id);
        $cust=Session::get('email');
        $messages=crop_message::where('crop_id',$crop->id)->get();
        $farmer=farmer_registration::where('email',$crop->email)->first();
        return view('customer.collection_details',['crop'=>$crop,'farmer'=>$farmer,'cust'=>$cust,'messages'=>$messages]);
    }

    public function sendMessage(Request $request){
       // $crop=add_crop::find($request->crop_id);
        //if($crop)
        


        $regis = new crop_message();
        $regis->crop_id = $request->crop_id;
        $regis->product_name = $request->product_name;
        $regis->farmer_email = $request->farmer_email;
        $regis->cust_id = $request->cust_id;
        $regis->name = $request->name;
        $regis->email = $request->email;
        $regis->mobile = $request->mobile;
        $regis->message = $request->message;
        $regis->save();

        Session::put('msg',$regis->message);

       // $data=$regis->toArray();
      //  Mail::send('farmer.msg_notification',$data,function($message) use ($data){
         //   $message->to($data['farmer_email']);
          //  $message->subject('msg_notification');
      //  });

        return redirect('/collection/info')->with('message','Send bidding message Successfully');
    }

    public function cust_notification(){
        $notification =cust_message::all();
       // $farmer=farmer_registration::where('email',$notification->farmer_email)->first();
        return view('customer.notification',['notifications'=>$notification]);
    }


}
