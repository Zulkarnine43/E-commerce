@extends('farmer.headerFooter')
@section('body')
    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage Customers Info</h3>
                    <h3 class="text-center text-success">{{Session::get('message')}}</h3>
                    <table class="table table-bordered table-active small text-center table-hover">
                        <tr class="t1">
                            <th>Sl No</th>
                            <th>fullname</th>
                            <th>email </th>
                            <th>mobile </th>
                            <th>district</th>

                        </tr>
                        @php($i=1);
                        @foreach($cust_infos as $cust_info)
                            <tr class="t2">
                                <td>{{$i++}}</td>
                                <td>{{$cust_info->fullname}}</td>
                                <td>{{$cust_info->email}}</td>
                                <td>{{$cust_info->mobile}}</td>
                                <td>{{$cust_info->district}}</td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
