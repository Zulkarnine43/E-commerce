@extends('customer.headerFooter')
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
                            <th>Farmer_Email</th>
                            <th>Message</th>
                            <th>Creadted _at</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($notifications as $notification)
                            <tr class="t2">
                                <td>{{$i++}}</td>
                                <td>{{$notification->product_name}}</td>
                                <td>{{$notification->farmer_email}}</td>
                                <td>{{$notification->message}}</td>
                                <td>{{$notification->created_at}}</td>
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
