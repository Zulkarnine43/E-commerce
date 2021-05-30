
@extends('home.headerFooter')
@section('body')
    @if($s->isEmpty())
        Not Found
    @endif


    <table class="table table-striped">
        <tbody>
        <tr>
            <td >{{$s->email}}</td>
            <td>{{$s->mobile}}</td>
        </tr>
        </tbody>
    </table>
@endsection
