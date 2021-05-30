<?php

namespace App\Http\Controllers;

use App\home_add;
use App\shipping_form;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;

class cartController extends Controller
{
    //
    public function add_cart(Request $request){
        $cart=home_add::find($request->id);
        Cart::add([
            'id'=>$cart->id,
            'name'=>$cart->product_name,
            'price'=>$cart->product_price,
            'qty'=>$request->qty,
            'options'=>[
                'image'=>$cart->product_image
            ]
        ]);
        return redirect('/cart/details');
    }

    public function direct_add_carts($id ,$qty){
        $cart=home_add::find($id);
        Cart::add([
            'id'=>$cart->id,
            'name'=>$cart->product_name,
            'price'=>$cart->product_price,
            'qty'=>$qty,
            'options'=>[
                'image'=>$cart->product_image
            ]
        ]);
        return redirect('/');
    }


    public function cart_details(){
        $allCart=Cart::content();

        if($allCart->isEmpty()){
            return view('cart.cart_not_found');
        }
            return view('cart.cart_details', ['products' => $allCart]);
}
    public function cart_delete($id){
            Cart::remove($id);
            return redirect('/cart/details');
    }
    public function shipping_form($id ,$qty,$sum){
        $products=home_add::find($id);
        return view('cart.shipping_form',['product'=>$products,'qty'=>$qty,'sum'=>$sum]);
    }

    public function shippingGoes(Request $request){
        $products=home_add::find($request->id);
        $shipping=new shipping_form();
        $shipping->fullname = $request->fullname;
        $shipping->email = $request->email;
        $shipping->phone_number = $request->phone_number;
        $shipping->address = $request->address;
        $shipping->payment_type = $request->payment_type;
        $shipping->product_name = $products->product_name;
        $shipping->product_price = $products->product_price;
        $shipping->product_quantity= $request->product_quantity;
        $shipping->total_price = $request->total_price;
        $shipping->save();
        return redirect('/')->with('message','shopping_cart_successfully');

    }

}
