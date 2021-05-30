@extends('admin.admin')
@section('body')

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3>Manage order Info</h3>
                    <h3 class="text-center text-success"></h3>
                    <table class="table table-bordered small text-center">
                        <tr>
                            <th>Sl No</th>
                            <th>Full Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($products as $product)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$product->fullname}}</td>
                                <td>{{$product->email}}</td>
                                <td>{{$product->phone_number}}</td>
                                <td>{{$product->address}}</td>
                                <td>
                                    <a href="" class="glyphicon-trash btn-success">Delete</a>
                                    <a href="{{route('order_details',['id'=>$product->id])}}" class="glyphicon-details btn-info">Details</a>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
