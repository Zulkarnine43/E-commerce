@extends('farmer.headerFooter')
@section('body')
    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage Crops Info</h3>
                    <h3 class="text-center text-success">{{Session::get('message')}}</h3>
                    <table class="table table-bordered small text-center table-hover">
                        <tr class="t1">
                            <th>Sl No</th>
                            <th>product_name </th>
                            <th>crop_type </th>
                            <th>product_quantity</th>
                            <th>product_price</th>
                            <th>product_description</th>
                            <th>long_description</th>
                            <th>product_image</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($crops as $crop)
                            <tr class="t2">
                                <td>{{$i++}}</td>
                                <td>{{$crop->product_name}}</td>
                                <td>{{$crop->crop_type}}</td>
                                <td>{{$crop->product_quantity}}</td>
                                <td>{{$crop->product_price}}</td>
                                <td>{{$crop->product_description}}</td>
                                <td>{{$crop->long_description}}</td>
                                <td>{{asset($crop->product_image)}}</td>
                                <td>
                                    <a href="{{route('edit_fruit',['id'=>$crop->id])}}" class="btn-success">Edit</a>
                                    <a href="{{route('delete_fruit',['id'=>$crop->id])}}" class="btn-success ">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
