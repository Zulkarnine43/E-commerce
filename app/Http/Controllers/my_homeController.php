<?php

namespace App\Http\Controllers;

use App\farmer_registration;
use App\gallary_add;
use App\home_add;
use App\add_crop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class my_homeController extends Controller
{
    //
    public function index(){
        $allCrops=home_add::all();
        return view('home.home',['allCrops'=>$allCrops]);
    }
    public function services(){
        return view('home.service');
    }
    public function contact_us(){
        return view('home.contact');
    }
    public function about_us(){
        return view('home.about_us');
    }
    public function gallary(){
        $images= gallary_add::all();
        return view('home.gallary',['images'=>$images]);
    }

    public function search(Request $request){
        $search_tx1=$request->search1;
        $search_tx2=$request->search2;
        $search=add_crop::orderBy('product_name','crop_type','ASC')
            ->where('product_name','Like','%'.$search_tx1.'%')
            ->orwhere('crop_type','Like','%'.$search_tx1.'%')
            ->get();
        $search2=farmer_registration::where('postal_code','Like','%'.$search_tx1.'%')->get();
        if($search) {
            return view('home.search', ['s' => $search]);
        }
        else if($search2){
            return view('home.search2', ['s' => $search2]);
        }
    }
    public function search_details($id){
        $crops=  add_crop::find($id);
        return view('home.search_details',['crop'=>$crops]);
    }
}
