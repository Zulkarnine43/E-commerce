@extends('admin.headerFooter')
@section('body')

    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage home Info</h3>
                    <table class="table table-bordered text-center table-hover" style="width: 90%">
                        <tr class="">
                            <th>Sl No</th>
                            <th>product_name</th>
                            <th>crop_type </th>
                            <th>product_quantity </th>
                            <th>product_price</th>
                            <th>product_description </th>
                            <th>long_description</th>
                            <th>product_image</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($home_all as $home_pro)
                            <tr class="">
                                <td>{{$i++}}</td>
                                <td>{{$home_pro->product_name}}</td>
                                <td>{{$home_pro->crop_type}}</td>
                                <td>{{$home_pro->product_quantity}}</td>
                                <td>{{$home_pro->product_price}}</td>
                                <td>{{$home_pro->product_description}}</td>
                                <td>{{$home_pro->long_description}}</td>
                                <td>{{$home_pro->product_image}}</td>
                                <td>
                                    <span><a href="">EDIT</a></span><br>
                                    <span><a href="{{route('home_delete',['id'=>$home_pro->id])}}">DELETE</a></span>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
