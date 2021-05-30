@extends('admin.headerFooter')
@section('body')

    <link href="{{url('public/css/manage.css')}}" rel="stylesheet" type="text/css">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="m">Manage gallary Info</h3>
                    <table class="table table-bordered table-hover text-center">
                        <tr class="">
                            <th>Sl No</th>
                            <th>product_name</th>
                            <th>crop_type </th>
                            <th>product_description </th>
                            <th>product_image</th>
                            <th>Action</th>
                        </tr>
                        @php($i=1);
                        @foreach($gallaries as $gallarie)
                            <tr class="">
                                <td>{{$i++}}</td>
                                <td>{{$gallarie->product_name}}</td>
                                <td>{{$gallarie->crop_type}}</td>
                                <td>{{$gallarie->product_description}}</td>
                                <td>{{$gallarie->product_image}}</td>
                                <td>
                                    <span><a href="">EDIT</a></span></br>
                                    <span><a href="{{route('gallary_delete',['id'=>$gallarie->id])}}">DELETE</a></span>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection()
