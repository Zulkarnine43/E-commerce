@extends('customer.headerFooter')
@section('body')
    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage farmer Info</h3>
                    <h3 class="text-center text-success">{{Session::get('message')}}</h3>
                    <table class="table table-bordered small text-center table-hover">
                        <tr class="t1">
                            <th>Sl No</th>
                            <th>fullname</th>
                            <th>email </th>
                            <th>mobile </th>
                            <th>district</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($farm_infos as $farm_info)
                            <tr class="t2">
                                <td>{{$i++}}</td>
                                <td>{{$farm_info->fullname}}</td>
                                <td>{{$farm_info->email}}</td>
                                <td>{{$farm_info->mobile}}</td>
                                <td>{{$farm_info->district}}</td>
                                <td><a href="{{route('Farmer_show_details',['email'=>$farm_info->email])}}">All_crop</a></td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
