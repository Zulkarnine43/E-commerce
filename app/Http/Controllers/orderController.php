<?php

namespace App\Http\Controllers;

use App\shipping_form;
use Illuminate\Http\Request;
use PDF;

class orderController extends Controller
{
    //
    public function order_info(){
        $crops=shipping_form::all();
        return view('order.order',['products'=>$crops]);
    }

    public function order_details($id){
        $products=shipping_form::find($id);
        return view('order.order_details',['product'=>$products]);
    }
    public function downloadInfo($id){
        $products=shipping_form::find($id);
        $pdf = PDF::loadView('order.download_invoice',['product'=>$products]);
        return $pdf->stream('invoice.pdf');
    }
}
