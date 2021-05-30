@extends('home.headerFooter');
@section('body')

    <h3 class="col-md-offset-3 col-md-4 text-success">Shipping Info goes here.....</h3>
    <form action="{{route('shippingGoes')}}" method="POST" class="form-right">
        {{ csrf_field() }}

        <div class="content">
            <div class="login">
                <div class="main-agileits">
                    <div class="form-w3agile form1">
                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>fullname</label>
                            <input type="text" class="form-control"  type="text" value="" name="fullname" placeholder="fullname">
                            <input type="hidden" name="id" value="{{$product->id}}">
                            <input type="hidden" name="product_quantity" value="{{$qty}}">
                            <input type="hidden" name="total_price" value="{{$sum}}">
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>Email</label>
                            <input type="text" class="form-control"  type="text" value="" name="email" placeholder="email">
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>phone_number</label>
                            <input type="text" class="form-control"  type="text" value="" name="phone_number" placeholder="phone_number">
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>address</label>
                            <input type="text" class="form-control"  type="text" value="" name="address" placeholder="address">
                        </div>

                        <div class="form-group col-md-offset-4 col-md-4">
                            <label>payment_type</label>
                            <select class="col-md-offset-0 col-md-12 text-center" name="payment_type" >
                                <option value="null"><-------Select Paymeny type------------></option>
                                <option value="Dhaka">Bkash</option>
                                <option value="Rajshahi">Paypal</option>
                                <option value="Khulna">Cash on Delivery</option>
                            </select>
                        </div>


                        <input class="col-md-offset-4 col-md-2 text-center btn-success"  type="submit" name="btn" value="Submit">
                    </div>

                </div>
            </div>
        </div>
    </form>
    </div>

@endsection
