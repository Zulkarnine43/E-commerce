@extends('admin.headerFooter')
@section('body')
    <div class="row">
        <div  class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <h3 class="text-center text-success"></h3>
                <h3>{{Session::get('message')}}</h3>

                <form method="POST" action="{{route('save_home_add')}}" enctype="multipart/form-data">
                    {{ csrf_field() }}

                    <div class="form-group">
                        <label class="control-label col-md-3">Crop Name</label>
                        <div class="col-md-9">
                            <input type="text" name="product_name" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Crop Type</label>
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
                        <label class="control-label col-md-3">Crop Quantity</label>
                        <div class="col-md-9">
                            <input type="text" name="product_quantity" class="form-control" min="1"/>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3"> Crop Price</label>
                        <div class="col-md-9">
                            <input type="number" name="product_price" class="form-control"/>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Crop Description</label>
                        <div class="col-md-9">
                            <input type="text" name="product_description" class="form-control"/>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">long Description</label>
                        <div class="col-md-9">
                            <textarea id="editor" class="form-control" name="long_description"></textarea>

                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3">product image</label>
                        <div class="col-md-9">
                            <input type="file" name="product_image" accept="image/*">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-9">
                            <input type="submit" name="btn" value="Save product Info">

                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
