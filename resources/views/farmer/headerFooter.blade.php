
<!DOCTYPE html>
<html>
<head>
    <title> Home ::</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="{{url('public/front/css/bootstrap.css')}}" rel="stylesheet" type="text/css" media="all" />


    <link href="{{url('public/front/css/pignose.layerslider.css')}}" rel="stylesheet" type="text/css" media="all" />
    <link href="{{url('public/front/css/style.css')}}" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="{{url('public/front/js/jquery-2.1.4.min.js')}}"></script>
    <script src="{{url('public/front/js/simpleCart.min.js')}}"></script>
    <script type="text/javascript" src="{{url('public/front/js/bootstrap-3.1.1.min.js')}}"></script>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    <script src="{{url('public/front/js/jquery.easing.min.js')}}"></script>
</head>
<body>
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href="{{route('index')}}"><img src="{{url('public/front/images/greenLife.jpg')}}"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form action="{{route('search')}}" method="get">
                <div class="search">
                    <input name="search1" style="color: green" type="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
                </div>
                <div class="section_room">
                    <select name="search2" id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">All categories</option>
                        <option value="HOME">HOME</option>
                        <option value="FARMERS">FARMERS</option>
                        <option value="CUSTOMERS">CUSTOMERS</option>
                        <option value="SERVICES">SERVICES</option>
                        <option value="GALLARY">GALLARY</option>
                        <option value="ABOUT">ABOUT US</option>
                        <option value="CONTACT">CONTACT</option>
                    </select>
                </div>
                <div class="sear-sub " >
                    <input name="btn" type="submit" value="" style="background-color: green">
                </div>
            </form>
        </div>
        <div class="col-md-3 header-right footer-bottom">
            <ul>
                <div class="card">
                    <img src="{{url('public/front/images/profile.png')}}" alt="image" style="width:50%" height="70" >
                    <h1>{{Session::get('name')}}</h1>
                    <p class="title">{{Session::get('district')}}</p>
                    <a href="{{route('collection')}}"><button>Profile</button></a>
                    <p>
                        <a href="{{route('index')}}" class="btn btn-info btn-sm">
                            <span class="glyphicon-log-out"></span> Log out
                        </a>
                    </p>
                </div>
            </ul>
        </div>
    </div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class=" menu__item"><a class="menu__link" href="{{route('farmer_home_page')}}">Home</a></li>
                            <li class="dropdown menu__item">
                                <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Crops <span class="caret"></span></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="{{route('Import_page')}}">Import_crop</a></li>
                                                <li><a href="{{route('manage_page')}}">manage_crop</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </ul>
                            </li>
                            <li class=" menu__item"><a class="menu__link" href="{{route('collection')}}">Collection_Info</a></li>
                            <li class=" menu__item"><a class="menu__link" href="{{route('customer_info')}}">Customer_Info</a></li>
                            <li class=" menu__item"><a class="menu__link" href="{{route('notification')}}">Notification</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>

@yield('body')

<div class="footer">
    <div class="container">
        <div class="col-md-3 footer-left">
            <h1><a href="{{route('index')}}"><img src="{{url('public/front/images/greenLife.jpg')}}"></a></h1>
            <p>  কৃষিকার্য  কৃষি মানবজাতির আদিমতম পেশা হিসেবে চিহ্নিত। মানুষের জীবনধারনের জন্য শষ্য উৎপাদন কিংবা গৃহপালিত পশু রক্ষণাবেক্ষনের জন্যে যথোচিত খাদ্য এবং প্রয়োজনীয় কাঁচামাল উৎপাদন ও সরবরাহসহ বহুবিধ উদ্দশ্যে প্রতিপালনের লক্ষ্যে কৃষিকার্য নির্বাহ করা হয়। যিনি কৃষির সাথে সংশ্লিষ্ট তিনিই কৃষক। </p>
        </div>
        <div class="col-md-9 footer-right">
            <div class="sign-grds">
                <div class="col-md-4 sign-gd">
                    <h4 style="background-color:black  ;color: White ;text-align: center">INFORMATION</h4>
                    <ul>
                        <li><a href="{{route('index')}}">Home</a></li>
                        <li><a href="{{route('gallary')}}">Gallary</a></li>
                        <li><a href="{{route('services')}}">Sevices</a></li>
                        <li><a href="{{route('contact_us')}}">Contact_Us</a></li>
                        <li><a href="{{route('about_us')}}">About_Us</a></li>

                    </ul>
                </div>

                <div class="col-md-5 sign-gd-two">
                    <h4 style="background-color: black ;color: White ; text-align: center">STORE INFORMATION</h4>
                    <ul>
                        <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : kazi Nazrul Islam Avenue, 4th block, <span>Newyork City.</span></li>
                        <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">admin@gmail.com</a></li>
                        <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +1869084620</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <p class="copy-right">&copy 2016 Green Life. All rights reserved | Developer by <a href="">Zulkar Nine (Shaon)</a></p>
    </div>
</div>
</body>
</html>
