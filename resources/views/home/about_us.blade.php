@extends('home.headerFooter')
@section('body')

    <style>
        .about{
            font-size: 30px;
            background-color: darkgray;
            color: black;
            margin-left: 300px;
        }
        .img{
            margin-left: 300px;
        }
        .si{
            font-size: 25px;
            background-color: black;
            color: white;
            text-align: center;
        }
    </style>

    <section >
        <div class="container ">
            <div class=" about">
                <h3 class="text-center">About Us</h3>
                <p class="text-center">What is about us in a website?</p>
            </div>
            <div class="row text-center">
                <div class="col-md-12">
                   <span class="img"> <img  src="{{url('public/front/images/g1.jpg')}}" height="300" width="300" alt="news image" class="img-fluid"></span>
                    <hr/>
                       <div class="si">
                           <h6 class="si">Welcome</h6>
                        <p class="main si" >At Website.com, we believe everyone deserves to have a website or online store. Innovation and simplicity makes us happy: our goal is to remove any technical or financial barriers that can prevent business owners from making their own website. We're excited to help you on your journey! </p>
                       </div>
                </div>

            </div>
            <hr/>
            <p class="text-center si"  >The about us page is commonly used by all types of businesses to give customers more insight into who is involved with a given business and exactly what it does. ... One way to view the about us concept is as a text self-portrait or short autobiography created by a business.</p>
        </div>
    </section>


@endsection
