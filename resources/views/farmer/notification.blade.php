@extends('farmer.headerFooter')
@section('body')

    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage Notification Info</h3>
                    <h3 class="text-center text-success">{{Session::get('message')}}</h3>
                    <table class="table table-bordered small text-center">
                        <tr class="t1">
                            <th>Sl No</th>
                            <th>Crop_name </th>
                            <th>Name </th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Message</th>
                            <th>Creadted _at</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($crops as $crop)
                            <tr class="t2">
                                <td>{{$i++}}</td>
                                <td>{{$crop->product_name}}</td>
                                <td>{{$crop->name}}</td>
                                <td>{{$crop->email}}</td>
                                <td>{{$crop->mobile}}</td>
                                <td>{{$crop->message}}</td>
                                <td>{{$crop->created_at}}</td>
                                <td>
                                    <a href="" class="btn-success ">Delete</a>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
