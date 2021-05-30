@extends('farmer.headerFooter')
@section('body')
    <script src="{{asset('/')}}/myhome/ckeditor/ckeditor.js"></script>
    <script src="{{asset('/')}}/myhome/ckeditor/samples/js/sample.js"></script>
    <link rel="stylesheet" href="{{asset('/')}}/myhome/ckeditor/samples/css/samples.css">
    <link rel="stylesheet" href="{{asset('/')}}/myhome/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
    <div class="row">
        <div  class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <h3 class="text-center text-success"></h3>
                <h3>{{Session::get('message')}}</h3>

                <form method="POST" action="{{route('crops_update',['id'=>$crop->id])}}" enctype="multipart/form-data">
                    {{ csrf_field() }}

                    <div class="form-group" style="margin-top: 100px">
                        <label class="control-label col-md-3 text-success text-uppercase">Farmer Email------------------------</label>
                        <div class="col-md-9">
                            <input type="text" name="email" class="form-control"  value="{{$crop->email}}"/>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">Crop Garden Name------------------------</label>
                        <div class="col-md-9">
                            <input type="text" name="product_name" class="form-control"  value="{{$crop->product_name}}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">Crop Type------------------------</label>
                        <div class="col-md-9">
                            <select class="form-control" name="crop_type">
                                <option>---Select a Name</option>
                                <option value="Fruits">Fruits</option>
                                <option value="vegetables">vegetables</option>
                                <option value="Food">Food Crops</option>
                                <option value="Others">Others crops</option>
                            </select>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">Crop Quantity------------------------</label>
                        <div class="col-md-9">
                            <input type="text" name="product_quantity" class="form-control" min="1"value="{{$crop->product_quantity}}"/>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase"> Minimum Crop Price------------------------</label>
                        <div class="col-md-9">
                            <input type="number" name="product_price" class="form-control" value="{{$crop->product_price}}" min="1"/>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">Crop Description------------------------</label>
                        <div class="col-md-9">
                            <input type="text" name="product_description" class="form-control" value="{{$crop->product_description}}"/>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">long Description------------------------</label>
                        <div class="col-md-9">
                            <textarea id="editor" class="form-control" name="long_description">{{$crop->long_description}}</textarea>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 text-success text-uppercase">product image------------------------</label>
                        <div class="col-md-9">
                            <input type="file" name="product_image" value="{{$crop->product_image}} accept="image/*" ">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-6  col-md-12 ">
                            <input class="btn-success" type="submit" name="btn" value="Update product Info">

                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <script>
        initSample();
    </script>
@endsection
