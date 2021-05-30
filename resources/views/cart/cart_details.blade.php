@extends('home.headerFooter')
@section('body')
    <div class="checkout">
        <div class="container">
            <h3>My Shopping Bag</h3>
            <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    @php($sum=0);
                    @foreach($products as $product)

                        <tr class="rem1">
                            <td class="invert-image"><a href=""><img src="{{asset($product->options->image)}}" width="30px" height="30px" alt="" class="img-responsive" /></a></td>
                            <td class="invert">{{$product->qty}}</td>
                            <td class="invert">{{$product->name}}</td>
                            <td class="invert" id="invert2">Tk.{{$product->price*$product->qty}}</td>
                            @php($sum =$sum+$product->price*$product->qty)
                            <td>
                                <span><a href="{{route('cart_delete',['id'=>$product->rowId])}}"> delete</a></span>
                            </td>
                        </tr>

                    @endforeach

                </table>
            </div>
            <div class="checkout-left">

                <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                    <a href="{{route('index')}}"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
                </div>
                <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                    <h4>Shopping basket</h4>
                    <ul>
                        <li> Taka<i>-</i> <span>Tk.{{$sum}}</span></li>
                        <li>Vat <i>-</i> <span>Tk 0.0</span></li>
                        <li >Total<i>-</i> <span  id="tot">{{$sum}}</span></li>
                    </ul>
                    <h1><a href="{{route('shipping_form',['id'=>$product->id,'qty'=>$product->qty,'sum'=>$sum])}}"class="text-success col-md-offset-3 ">check</a></h1>
                </div>
                <div class="clearfix"> </div>

            </div>

        </div>
    </div>

@endsection
