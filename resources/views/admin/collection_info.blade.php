@extends('admin.headFoot')
@section('body')
    <h1 class="text-danger col-md-offset-4 ">{{Session::get('message')}}</h1>

    @foreach($allCrops as $allCrop)
        <div class="col-md-3 product-men">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img  src="{{asset($allCrop->product_image)}} " width="1000" height="400" >
                    <span class="product-new-top"></span>
                </div>
                <div class="item-info-product ">
                    <h4 style="color: limegreen">{{$allCrop->product_name}}</h4>
                    <div class="info-product-price">
                        <span class="item_price">{{$allCrop->product_quantity}}</span>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endsection
