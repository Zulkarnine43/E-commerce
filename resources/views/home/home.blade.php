@extends('home.headerFooter')
@section('body')

    <div class="banner-grid">
        <div id="visual">
            <div class="slide-visual">
                <!-- Slide Image Area (1000 x 424) -->
                <ul class="slide-group">
                    <li><img class="img-responsive" src="{{url('public/front/images/a1.jpg')}}" alt="Dummy Image" /></li>
                    <li><img class="img-responsive" src="{{url('public/front/images/a2.jpg')}}" alt="Dummy Image" /></li>
                    <li><img class="img-responsive" src="{{url('public/front/images/a3.jpg')}}" alt="Dummy Image" /></li>
                </ul>

                <!-- Slide Description Image Area (316 x 328) -->
                <div class="script-wrap">
                    <ul class="script-group">
                        <li><div class="inner-script"><img class="img-responsive" src="{{url('public/front/images/aa1.jpg')}}" alt="Dummy Image" /></div></li>
                        <li><div class="inner-script"><img class="img-responsive" src="{{url('public/front/images/aa2.jpg')}}" alt="Dummy Image" /></div></li>
                        <li><div class="inner-script"><img class="img-responsive" src="{{url('public/front/images/aa3.jpg')}}" alt="Dummy Image" /></div></li>
                    </ul>
                    <div class="slide-controller">
                        <a href="#" class="btn-prev"><img src="{{url('public/front/images/btn_prev.png')}}" alt="Prev Slide" /></a>
                        <a href="#" class="btn-play"><img src="{{url('public/front/images/btn_play.png')}}" alt="Start Slide" /></a>
                        <a href="#" class="btn-pause"><img src="{{url('public/front/images/btn_pause.png')}}" alt="Pause Slide" /></a>
                        <a href="#" class="btn-next"><img src="{{url('public/front/images/btn_next.png')}}" alt="Next Slide" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="{{url('public/front/js/pignose.layerslider.js')}}"></script>
    <script type="text/javascript">
        //<![CDATA[
        $(window).load(function() {
            $('#visual').pignoseLayerSlider({
                play    : '.btn-play',
                pause   : '.btn-pause',
                next    : '.btn-next',
                prev    : '.btn-prev'
            });
        });
        //]]>
    </script>

    @foreach($allCrops as $allCrop)
        <div class="col-md-3 product-men">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img  src="{{asset($allCrop->product_image)}} " width="1000" height="400" >
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="{{route('direct_add_carts',['id'=>$allCrop->id,'qty'=>1])}}" class="link-product-add-cart">Add To Cart</a>
                        </div>
                    </div>
                </div>
                <div class="item-info-product ">
                    <h4 style="color: limegreen">{{$allCrop->product_name}}</h4>
                    <div class="info-product-price">
                        <span class="item_price">Tk.{{$allCrop->product_price}}</span>
                    </div>
                    <div>
                        <span class="item_price">{{$allCrop->product_quantity}}</span>
                    </div>

                </div>
                <div>
                    <a href="{{route('home_details',['id'=>$allCrop->id])}}" class="col-md-offset-5 item_add single-item hvr-outline-out">Details</a>
                </div>
            </div>
        </div>
    @endforeach
@endsection
