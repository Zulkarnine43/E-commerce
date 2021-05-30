@extends('home.headerFooter')
@section('body')
    <!-- banner -->
        <div class="container">
            <h3 class="col-md-offset-1 text-uppercase text-success" style="background-color: darkgray; color: black; text-align: center;margin-left: 200px">Contact</h3>
        </div>

    <div class="contact">
        <div class="container">
            <div class="contact-grids">
                <div class="col-md-4 contact-grid text-center animated wow slideInLeft" data-wow-delay=".5s">
                    <div>
                        <h4>Address</h4>
                        <p style="color: #4cae4c" class="col-md-12">12K Street, Bashiruddin Road <span>Dhaka City.</span></p>
                    </div>
                </div>
                <div class="col-md-4 contact-grid text-center animated wow slideInUp" data-wow-delay=".5s">
                    <div>
                        <h4>Call Us</h4>
                        <p style="color: #4cae4c" class="col-md-12">+1989419776<span>+1869084620</span></p>
                    </div>
                </div>
                <div class="col-md-4 contact-grid text-center animated wow slideInRight" data-wow-delay=".5s">
                    <div >
                        <h4>Email</h4>
                        <p ><a href="mailto:info@example.com" style="color: #4cae4c" class="col-md-12">admin@@gmail.com</a><span><a href="mailto:info@example.com" style="color: #4cae4c" class="col-md-12">Zulkarnine@gmail.com</a></span></p>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="map wow fadeInDown animated" data-wow-delay=".5s">
                <h3 class="tittle">View On Map</h3>
                <iframe src="https://www.google.com/maps/place/Bashir+Uddin+Rd,+ঢাকা+1205/@23.7485983,90.3831847,20z/data=!4m5!3m4!1s0x3755b8ba9d818629:0xb017f180b777c61!8m2!3d23.7487838!4d90.3836577" frameborder="0" style="border:0"></iframe>
            </div>
            <h3 class="tittle">Contact Form</h3>
            <form>
                <div class="contact-form2">
                    <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
                    <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
                    <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                    <input type="submit" value="Submit" >
                </div>
            </form>
        </div>
    </div>

@endsection
