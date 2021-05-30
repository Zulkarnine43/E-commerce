@extends('home.headerFooter')
@section('body')
    <div class="login" style="margin-top: 100px; margin-bottom: 100px">
        <h3  class="col-md-offset-4 col-md-3 text-center text-success" style="background-color: darkgray; color: black;">Login If you already register</h3>
        <h3>{{Session::get('message')}}</h3>
    </div>

    <form action="{{route('cust_login_check')}}" method="POST">
        @csrf
        <div class="form-group col-md-offset-4 col-md-4">
            <label >Email address</label>
            <input type="email" class="form-control"  type="text" value="" name="email"  placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group col-md-offset-4 col-md-4">
            <label>Password</label>
            <input type="password" class="form-control"  type="password" value="" name="password" placeholder="Password">
        </div>

        <div class="form-group">
            <div class="col-md-offset-4  col-md-12 ">
                <input class="btn-success" type="submit" name="btn" value="login">
            </div>
        </div>
    </form>

    <div class="form-group col-md-offset-5 col-md-4">
        <a href="#" class="forg-left">Forgot Password</a></br>
        <a href="{{route('customer_register')}}" class="forg-right">Register</a>
    </div>

@endsection
