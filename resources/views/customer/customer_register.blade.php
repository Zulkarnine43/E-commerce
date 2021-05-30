
@extends('home.headerFooter')
@section('body')
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-success text-success"></h3>
                    <h3 class="col-md-offset-3 col-md-5 text-center font-italic" style="background-color: darkgray; color: black;"> Register</h3>
                    <h1>{{Session::get('verify')}}</h1>

                    <form action="{{route('CustregisterSave')}}" method="POST" >
                        @csrf
                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>fullname</label>
                            <input type="text" class="form-control"  type="text" value="" name="fullname" placeholder="fullname">
                            <span>{{$errors->has('fullname') ? $errors->first('fullname'): ' '}}</span>
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>username</label>
                            <input type="text" class="form-control"  type="text" value="" name="username" placeholder="username">
                            <span>{{$errors->has('username') ? $errors->first('username') : ' '}}</span>
                        </div>


                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>email</label>
                            <input type="text" class="form-control"  type="text" value="" name="email" placeholder="email">
                            <span>{{$errors->has('email') ? $errors->first('email') : ' '}}</span>
                        </div>


                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>mobile</label>
                            <input type="number" class="form-control"  type="number" value="" name="mobile" placeholder="mobile">
                            <span>{{$errors->has('mobile') ? $errors->first('mobile') : ' '}}</span>
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>Select Your Division</label>
                            <select class="col-md-offset-0 col-md-12 text-center" name="district" >
                                <option value="null"><-------Select Your Division------------></option>
                                <option value="Dhaka">Dhaka</option>
                                <option value="Rajshahi">Rajshahi</option>
                                <option value="Khulna">Khulna</option>
                                <option value="Chittagong">Chittagong</option>
                                <option value="Barishal">Barishal</option>
                                <option value="Comilla">Comilla</option>
                                <option value="Rangpur">Rangpur</option>
                            </select>
                        </div>


                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>postal_code</label>
                            <input type="number" class="form-control"  type="number" value="" name="postal_code" placeholder="postal_code">
                            <span>{{$errors->has('postal_code') ? $errors->first('postal_code') : ' '}}</span>
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>Password</label>
                            <input type="password" class="form-control"  type="password" value="" name="password" placeholder="Password">
                            <span>{{$errors->has('password') ? $errors->first('password') : ' '}}</span>
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>confirm_password</label>
                            <input type="password" class="form-control"  type="password" value="" name="confirm_password" placeholder="confirm_password">
                            <span>{{$errors->has('confirm_password') ? $errors->first('confirm_password') : ' '}}</span>
                        </div>

                        <input class="col-md-offset-4 col-md-2 text-center text-black-50 btn-success" type="submit" name="btn" value="Submit">
                    </form>
                </div>

            </div>
        </div>
    </div>


@endsection
