@extends('customer.headerFooter')
@section('body')
    <div class="col-md-3 product-men">
        <div class="men-pro-item simpleCart_shelfItem">
            <div class="men-thumb-item">
                <img  src="{{asset($crop->product_image)}} " width="1000" height="400" >
                <span class="product-new-top">New</span>
            </div>
            <div class="item-info-product ">
                <h4><a href="">{{$crop->product_name}}</a></h4>
                <div class="info-product-price">
                    <span class="item_price">{{$crop->product_quantity}}</span>
                </div>
                <a href="{{route('crop_details',['id'=>$crop->id])}}" class="item_add single-item hvr-outline-out button2">Details</a>
            </div>
        </div>
    </div>
@endsection
