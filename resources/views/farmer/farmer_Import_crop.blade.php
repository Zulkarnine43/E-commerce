@extends('farmer.headerFooter')
@section('body')
    <script src="{{url('public/myhome/ckeditor/ckeditor.js')}}"></script>
    <script src="{{url('public/myhome/ckeditor/samples/js/sample.js')}}"></script>
    <link rel="stylesheet" href="{{url('public//myhome/ckeditor/samples/css/samples.css')}}">
    <link rel="stylesheet" href="{{url('public/myhome/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css')}}">

    <style>
        .si{
            font-size: 20px;
            font-weight: bold;
            letter-spacing: 1.4px;
            line-height: 40px;
            text-indent: 0px;
            alignment: left;
            text-align: left;
        }
        .co{
            color: White;
            background-color: black;
            font-style: italic;
            text-align: center;
        }
    </style>

    <div class="login" style="margin-top: 100px; margin-bottom: 100px">
        <h3  class="col-md-offset-4 col-md-3 text-center text-success" style="background-color: limegreen">Product Import</h3>
        <h3 class="text-danger">{{Session::get('message')}}</h3>
    </div>


    <form method="POST" action="{{route('crops_import')}}" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group col-md-offset-3 col-md-6">
            <input type="hidden" name="email" class="form-control" value="{{Session::get('emaill')}}" required >
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Crop Garden Name</label>
            <input type="text" name="product_name" class="form-control" placeholder="Ex.Jute,Rice " required>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Crop Type</label>
            <select class="form-control" name="crop_type" required>
                <option>---Select a Name</option>
                <option value="Fruits">Fruits</option>
                <option value="vegetables">vegetables</option>
                <option value="Food">Food Crops</option>
                <option value="Others">Others crops</option>
            </select>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Crop Quantity</label>
            <input type="text" name="product_quantity" class="form-control" min="1" placeholder="Ex.20 bighas,100tree..Etc" required>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Minimum Crop bidding Price</label>
            <input type="number" name="product_price" class="form-control" placeholder="Ex.Minimum 10000tk For bidding" min="1" required>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Crop Description</label>
            <input type="text" name="product_description" class="form-control" placeholder="Short Discreption" required>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Long Description</label>
            <textarea id="editor" class="form-control" name="long_description" required></textarea>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">Last Date Bidding</label>
            <input type="date" name="last_date_bidding" class="form-control" placeholder="" required>
        </div>

        <div class="form-group col-md-offset-3 col-md-6">
            <label class="si co">product image-</label>
            <input type="file" name="product_image" accept="image/*" required>
        </div>

        <div class="form-group">
            <div class="col-md-offset-5  col-md-12 ">
                <input class="btn-success" type="submit" name="btn" value="Save product Info" >
            </div>
        </div>
    </form>

    <script>
        initSample();
    </script>
@endsection
