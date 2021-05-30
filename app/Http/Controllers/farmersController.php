<?php

namespace App\Http\Controllers;

use App\add_crop;
use App\crop_message;
use App\customer_registration;
use App\farmer_registration;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

class farmersController extends Controller
{
    //
    public function farmer_register(){
        return view('farmer.farmer_register');
    }
    public function registerSave(Request $request){
        $this->validate($request,['email'=>'required|email|max:255|unique:users'],[
            'email.required'=>'Email cannot be empty','email'=>'Email format is not valid.'
        ]);

        $this->validate($request,[
            'fullname'=>'required|string|max:255',
            'username'=>'required|string|max:255',
            'mobile'=>'required|regex:/(0)[0-9]/|not_regex:/[a-z]/|min:9',
            'district'=>'required',
            'postal_code'=>'required|max:99999|integer',
            //password'=>'required|Max:10|Min:5',
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

        $regis = new farmer_registration();
        $regis->fullname = $request->fullname;
        $regis->username = $request->username;
        $regis->email = $request->email;
        $regis->mobile = $request->mobile;
        $regis->district = $request->district;
        $regis->postal_code = $request->postal_code;
        $regis->password =encrypt( $request->password);
        $regis->confirm_password =encrypt($request->confirm_password);
        $regis->save();


       /* Session::put([
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
        Mail::send('farmer.verification_mail',$data,function($message) use ($data){
            $message->to($data['email']);
            $message->subject('verification_mail');
        });

        return redirect('/farmer/register')->with('verify','Please Verify Your Email Account');
    }


    public function registerVerify(){

     /*   $regis = new farmer_registration();
        $regis->fullname = Session::get('fullname');
        $regis->username = Session::get('username');
        $regis->email = Session::get('email');
        $regis->mobile = Session::get('mobile');
        $regis->district = Session::get('district');
        $regis->postal_code = Session::get('postal_code');
        $regis->password =encrypt( Session::get('password'));
        $regis->confirm_password =encrypt(Session::get('confirm_password'));
        $regis->save();*/


        return view('farmer.registerVerify');
    }



    public function farmer_login(){
        return view('farmer.farmer_login');
    }

    public function farmer_login_check(Request $request){
            $password=encrypt( $request->password);

        $farmer = farmer_registration::where('email',$request->email )->first();
        $farmer2= farmer_registration::where('password',$password)->get();

        if($farmer && $farmer2){
            Session::put('emaill', $farmer->email);
            Session::put('name',$farmer->fullname);
            Session::put('district',$farmer->district);
            return redirect('/farmer/page/home');
        }
        else {
            return redirect('/farmer/login')->with('message', 'required valid password');
        }
    }
    public function farmer_home_page(){
        return view('farmer.farmer_home_page');
    }
    public function Import_page(){
        return view('farmer.farmer_Import_crop');
    }
    public function crops_import(Request $request){
        $addProducts = new add_crop();

        $productImage = $request->file('product_image');
        if ($productImage) {
            $imageName = $productImage->getClientOriginalName();
            $directory = 'product_images/';
            $imageUrl = $directory.$imageName;
            $productImage->move($directory, $imageName);
        }

            $addProducts->email = $request->email;
            $addProducts->product_name = $request->product_name;
            $addProducts->crop_type = $request->crop_type;
            $addProducts->product_quantity = $request->product_quantity;
            $addProducts->product_price = $request->product_price;
            $addProducts->product_description = $request->product_description;
            $addProducts->long_description = $request->long_description;
            $addProducts->last_date_bidding = $request->last_date_bidding;
            $addProducts->product_image = $imageUrl;
            $addProducts->save();

            return redirect('/farmer/Import/page')->with('message', 'Save Products Info Successfully');

    }
    public function manage_page(){
        $farmer=Session::get('emaill');
        $allCrops =add_crop::where('email',$farmer)->get();
        return view('farmer.manage_fruit',['crops'=>$allCrops]);
    }


    public function edit_fruit($id){
        $crop=add_crop::find($id);
        $farmers=farmer_registration::all();
        return view('farmer.edit_fruits',['crop'=>$crop,'farmers'=>$farmers]);
    }
    public function crops_update(Request $request,$id){
        $addProducts=add_crop::find($id);

        $productImage = $request->file('product_image');
        if ($productImage) {
            $imageName = $productImage->getClientOriginalName();
            $directory = 'product_images/';
            $imageUrl = $directory.$imageName;
            $productImage->move($directory, $imageName);

        }

        $addProducts->email = $request->email;
        $addProducts->product_name = $request->product_name;
        $addProducts->crop_type = $request->crop_type;
        $addProducts->product_quantity = $request->product_quantity;
        $addProducts->product_price = $request->product_price;
        $addProducts->product_description = $request->product_description;
        $addProducts->long_description = $request->long_description;
        $addProducts->product_image = $imageUrl;
        $addProducts->save();

        return redirect('/farmer/Import/page')->with('message', 'Update Products Info Successfully');

    }

    public function delete_fruit($id){
        $row=add_crop::find($id);
        if($row){
            $row->delete();
        }
        return redirect('/farmer/manage/page')->with('message','delete Successfully');
    }

    public function customer_info(){
        $cust_infos=customer_registration::all();
        return view('farmer.cust_view',['cust_infos'=>$cust_infos]);
    }
    public function collection(){

        $email= Session::get('emaill');
        $allCrops = add_crop::where('email',$email)->get();
        return view('farmer.collection',['allCrops'=>$allCrops]);
    }
    public function notification(){
        $email= Session::get('emaill');
        $crops = crop_message::where('farmer_email',$email)->get();
        $crop_name=add_crop::where('email',$email)->get();
        return view('farmer.notification',['crops'=>$crops]);
    }
}
