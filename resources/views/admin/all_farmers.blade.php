@extends('admin.headerFooter')
@section('body')
    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage farmer Info</h3>
                    <table class="table table-bordered small text-center table-hover">
                        <tr class="t1">
                            <th>Sl No</th>
                            <th>fullname</th>
                            <th>email </th>
                            <th>mobile </th>
                            <th>district</th>
                            <th>Created_At</th>
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
                                <td>{{$farm_info->created_at}}</td>
                                <td>
                                    <span><a href="{{route('admin_Show_Farmer_details',['email'=>$farm_info->email])}}">All_crops</a></span>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
