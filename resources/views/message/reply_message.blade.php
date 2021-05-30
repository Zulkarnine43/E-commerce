@extends('farmer.headerFooter')

@section('body')

    <div class="add-review">
        <h4>add a message</h4>
        <form action="{{route('cust_message')}}" method="POST">
            @csrf
            <input type="hidden" name="crop_id" value="{{$crop->id}}">
            <input type="hidden" name="product_name" value="{{$crop->product_name}}" >
            <input type="hidden" name="farmer_email" value="{{$farmer->email}}" >
       <div class="col-md-5 col-md-offset-4">
            <textarea  type="text" name="message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Your message here...</textarea>
       </div>
           <input class="col-md-3 col-md-offset-5" type="submit" name="btn" value="SEND">
        </form>
    </div>

@endsection