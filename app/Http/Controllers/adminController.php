<?php

namespace App\Http\Controllers;

use App\add_crop;
use App\crop_message;
use App\customer_registration;
use App\farmer_registration;
use App\gallary_add;
use App\home_add;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class adminController extends Controller
{
    //
    public function admin(){
        return view('admin.admin');
    }
    public function all_farmers(){
        $farm_infos=farmer_registration::all();
        return view('admin.all_farmers',['farm_infos'=>$farm_infos]);
    }
    public function all_customers(){
        $cust_infos=customer_registration::all();
        return view('admin.all_customers',['cust_infos'=>$cust_infos]);
    }
    public function home_add(){
        return view('admin.home_add');
    }
    public function save_home_add(Request $request){
        $addProducts = new home_add();

        $productImage = $request->file('product_image');
        if ($productImage) {
            $imageName = $productImage->getClientOriginalName();
            $directory = 'home_images/';
            $imageUrl = $directory.$imageName;
            $productImage->move($directory, $imageName);
        }
        $addProducts->product_name = $request->product_name;
        $addProducts->crop_type = $request->crop_type;
        $addProducts->product_quantity = $request->product_quantity;
        $addProducts->product_price = $request->product_price;
        $addProducts->product_description = $request->product_description;
        $addProducts->long_description = $request->long_description;
        $addProducts->product_image = $imageUrl;
        $addProducts->save();

        return redirect('/home/add')->with('message', 'Save Products Info Successfully');
    }

    public function manage_home_add(){
        $home_all=home_add::all();
        return view('admin.manage_home_add',['home_all'=>$home_all]);
    }
    public function home_delete($id){
        $row=home_add::find($id);
        if($row){
            $row->delete();
        }
        return redirect('/home/manage')->with('message','delete Successfully');
    }

    public function home_details($id){
        $crop=home_add::find($id);
        return view('admin.crop_details',['crop'=>$crop]);
    }


    public function gallary_add(){
        return view('admin.gallary_add');
    }
    public function gallary_save(Request $request)
    {
        $addProducts = new gallary_add();
        $productImage = $request->file('product_image');
        if ($productImage) {
            $imageName = $productImage->getClientOriginalName();
            $directory = 'gallary_images/';
            $imageUrl = $directory . $imageName;
            $productImage->move($directory, $imageName);
        }
        $addProducts->product_name = $request->product_name;
        $addProducts->crop_type = $request->crop_type;
        $addProducts->product_description = $request->product_description;
        $addProducts->product_image = $imageUrl;
        $addProducts->save();

        return redirect('/gallary/add')->with('message', 'Save gallary Info Successfully');
    }
    public function manage_gallary(){
        $gallaries=gallary_add::all();
        return view('admin.manage_gallary',['gallaries'=>$gallaries]);
    }
    public function gallary_delete($id){
        $row=gallary_add::find($id);
        if($row){
            $row->delete();
        }
        return redirect('/gallary/manage')->with('message','delete Successfully');
    }

    public function farmer_manage_add_crop(){
        $add_crops=add_crop::all();
        return view('admin.manage_add_crop',['crops'=>$add_crops]);
    }
    public function delete_crop($id){
        $row=add_crop::find($id);
        if($row){
            $row->delete();
        }
        return redirect('/manage/add/crop')->with('message','delete Successfully');
    }
    public function search(Request $request){
        $search=$request->search1;
        return home_add::where('crop_type','Like','%'.$search.'%')->get();

        //return view('admin.admin_search',['crops'=>$add_crops]);
    }

    public function admin_show_collection(){
        $allCrops=add_crop::all();
        return view('admin.collection_info',['allCrops'=>$allCrops]);
    }

            public function admin_Show_Farmer_details($email){
                $all_crops=add_crop::where('email',$email)->get();
                return view('admin.farmer.collection_details',['allCrops'=>$all_crops]);
            }


    public function admin_show_crop_details($id){
        $crop = add_crop::find($id);
       // $cust=Session::get('email');
        $messages=crop_message::where('crop_id',$crop->id)->get();
        $farmer=farmer_registration::where('email',$crop->email)->first();
        return view('admin.farmer.crop_details',['crop'=>$crop,'farmer'=>$farmer,'messages'=>$messages]);
    }

}
