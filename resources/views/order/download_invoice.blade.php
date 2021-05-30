
    <div class="table-responsive">
        <h3 class=" text-center text-success">shipping for this order</h3>
        <table class="table table-dark table-bordered" border="1px">
            <tr style="color: darkmagenta">
                <th>full name</th>
                <th>phone number</th>
                <th>email name</th>
                <th>address </th>

            </tr>
            <tr>
                <td>{{$product->fullname}}</td>
                <td>{{$product->email}}</td>
                <td>{{$product->phone_number}}</td>
                <td>{{$product->address}}</td>

            </tr>
        </table>
    </div>

    <div class="table-responsive">
        <h3 class=" text-center text-success">payment for this order</h3>
        <table class="table table-dark table-bordered" border="1px" >
            <tr style="color: darkmagenta">
                <th class="col-md-offset-3 col-md-4 text-center">payment type</th>
            </tr>
            <tr>
                <td class="col-md-offset-3 col-md-4 text-center">{{$product->payment_type}}</td>
            </tr>
        </table>
    </div>

    <div class="table-responsive">
        <h3 class="text text-success text-center">Product</h3>
        <table class="table table-dark table-bordered" border="1px">

            <tr style="color: darkmagenta">
                <th scope="col" >product-name</th>
                <th scope="col">product-quantity</th>
                <th scope="col">product-price</th>
                <th>total price</th>

            </tr>
            <tr>
                <td>{{$product->product_name}}</td>
                <td>{{$product->product_quantity}}</td>
                <td>{{$product->product_price}}</td>
                <td>{{$product->total_price}}</td>

            </tr>

        </table>
    </div>