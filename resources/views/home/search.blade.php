@extends('home.headerFooter')
@section('body')
@if($s->isEmpty())
    Not Found
    @endif


    <table class="table table-striped">
    	@foreach($s as $sv)
    	<tbody>
    		<tr>
    			<td class="text-success col-md-offset-6">{{$sv->product_name}}</td>
    			<td>
    				<a href="{{route('search_details',['id'=>$sv->id])}}">Details</a>
    			</td>
    		</tr>
    	</tbody>
    	@endforeach
    </table>

@endsection