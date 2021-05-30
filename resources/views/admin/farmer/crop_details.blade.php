@extends('admin.headFoot')
@section('body')

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript" src="{{url('public/front/js/jquery-2.1.4.min.js')}}"></script>
    <script src="{{url('public/front/js/imagezoom.js')}}"></script>
    <script src="{{url('public/front/js/jquery.flexslider.js')}}"></script>
    <script src="{{url('public/front/js/simpleCart.min.js')}}"></script>
    <script type="text/javascript" src="{{url('public/front/js/bootstrap-3.1.1.min.js')}}"></script>
    <link href='{{url('public/front/fonts.googleapis.com/css?family=Montserrat:400,700')}}' rel='stylesheet' type='text/css'>
    <link href='{{url('public/front/fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic')}}' rel='stylesheet' type='text/css'>
    <script src="{{url('public/front/js/jquery.easing.min.js')}}"></script>

    <div class="single">
        <div class="container">
            <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                <div class="grid images_3_of_2">
                    <div class="flexslider">
                        <script>
                            $(window).load(function() {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                        <ul class="slides">
                            <li data-thumb="">
                                <div class="thumb-image"> <img src="{{asset($crop->product_image)}} " width="600px"  height="800px" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <li data-thumb="">
                                <div class="thumb-image"> <img src="{{asset($crop->product_image)}}"  width="600px" height="800px" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
                <div class="text-success text-uppercase">
                    <span >Crop Name ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->product_name}}</h4></span>
                </div>
                <div class="text-danger text-uppercase">
                    <span >Crop Type ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->crop_type}}</h4></span>
                </div>
                <div class="text-danger text-uppercase">
                    <span >Crop Quantity ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->product_quantity}}</h4></span>
                </div>
                <div class="text-danger text-uppercase">
                    <span >Minimum Bidding budget ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->product_price}}</h4></span>
                </div>
                <div class="text-danger text-uppercase">
                    <span >Crop short Description ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red;line-height: 40px;">{{$crop->product_description}}</h4></span>
                </div>
                <div class="text-danger text-uppercase">
                    <span >Created At ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->created_at}}</h4></span>
                </div>

                <div class="text-danger text-uppercase">
                    <span >last date of bidding ::</span><br>
                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: red">{{$crop->last_date_bidding}}</h4></span>
                </div>




                <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
                            <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Bidding(1)</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                                <h5>Product Brief Description</h5>
                                <p><span></span></p>
                                <div class="text-danger text-uppercase">
                                    <span > Description ::</span><br>
                                    <span><h4 class="  col-md-offset-1" style="color: black;line-height: 40px;">{{$crop->long_description}}</h4></span>
                                </div>
                                <div class="text-danger text-uppercase" >
                                    <span > Farmer Name ::</span><br>
                                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: blue;">{{$farmer->fullname}}</h4></span>
                                </div>
                                <div class="text-danger ">
                                    <span > Farmer Email ::</span><br>
                                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: blue">{{$farmer->email}}</h4></span>
                                </div>
                                <div class="text-danger text-uppercase">
                                    <span > Farmer Mobile ::</span><br>
                                    <span><h4 class="float-xl-right float-right col-md-offset-6" style="color: blue">{{$farmer->mobile}}</h4></span>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
                                <div class="bootstrap-tab-text-grids">
                                    <div class="bootstrap-tab-text-grid">
                                        <div class="bootstrap-tab-text-grid-left">
                                            <img src="{{url('public/front/images/Zulkar.jpg')}}" alt=" " class="img-responsive">
                                        </div>
                                        <div class="bootstrap-tab-text-grid-right">
                                            <ul>
                                                <li><a href="#">Admin</a></li>
                                                <li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
                                            </ul>
                                            <p>My name is Zulkar Nine....Nick name Shaon ...I am a student of City University of Bangladesh..Engeneearing in Computer Science....</p>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div>
                                        <h5>Product Brief Message</h5>
                                        @foreach($messages as $message)

                                            <div class="text-uppercase">
                                                <h5>Biddings</h5>
                                                <span><h4 class=" float-right col-md-offset-6" style="color: red">{{$message->name}}</h4></span>
                                            </div>

                                            <div class="text-danger ">
                                                <span><h4 class=" float-right col-md-offset-6" style="color: black">{{$message->email}}</h4></span>
                                            </div>
                                            <div class="text-danger text-uppercase">
                                                <span><h4 class=" float-right col-md-offset-6" style="color: black">{{$message->message}}</h4></span>
                                            </div>

                                            <div class="text-danger text-uppercase">
                                                <span><h4 class=" float-right col-md-offset-6" style="color: black">{{$message->created_at}}</h4></span>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

