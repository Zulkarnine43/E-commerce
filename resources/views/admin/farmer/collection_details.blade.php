<@extends('admin.headFoot')
@section('body')

    @foreach($allCrops as $allCrop)
        <div class="col-md-3 product-men">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img  src="{{asset($allCrop->product_image)}} " width="1000" height="400" >
                    <span class="product-new-top"></span>
                </div>
                <div class="item-info-product ">
                    <h4 class="text-success">{{$allCrop->product_name}}</h4>
                    <div class="info-product-price">
                        <span class="item_price">{{$allCrop->product_quantity}}</span>
                    </div>
                </div>
                <div>
                    <a href="{{route('admin_show_crop_details',['id'=>$allCrop->id])}}" class="col-md-offset-5 item_add single-item hvr-outline-out">Details</a>
                </div>
            </div>
        </div>
    @endforeach


@endsection
