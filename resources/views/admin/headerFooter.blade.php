<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Dashboard</title>
    <link href="{{url('public/admin/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="{{url('public/admin/css/sb-admin-2.min.css')}}" rel="stylesheet">

    <script src="{{url('public/myhome/ckeditor/ckeditor.js')}}"></script>
    <script src="{{url('public/myhome/ckeditor/samples/js/sample.js')}}"></script>
    <link rel="stylesheet" href="{{url('public/myhome/ckeditor/samples/css/samples.css')}}">

</head>

<body id="page-top">

<div id="wrapper">
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{url('http://localhost/blog/login')}}">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="small">Logout</i>
            </div>

        </a>
        <hr class="sidebar-divider my-0">
        <li class="nav-item active">
            <a class="nav-link" href="{{route('admin')}}">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
        </li>
        <hr class="sidebar-divider">
        <div class="sidebar-heading">
            Interface
        </div>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Users</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Components:</h6>
                    <a class="collapse-item" href="{{route('all_farmers')}}">Farmers</a>
                    <a class="collapse-item" href="{{route('all_customers')}}">Customer</a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Home</span>
            </a>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Components:</h6>
                    <a class="collapse-item" href="{{route('home_add')}}">Home_add</a>
                    <a class="collapse-item" href="{{route('manage_home_add')}}">manage_add</a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Gallary</span>
            </a>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Components:</h6>
                    <a class="collapse-item" href="{{route('gallary_add')}}">Gallary_add</a>
                    <a class="collapse-item" href="{{route('manage_gallary')}}">manage_gallary</a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Collection</span>
            </a>
            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Components:</h6>
                    <a class="collapse-item" href="{{route('admin_show_collection')}}">Collection_Info</a>
                    <a class="collapse-item" href="{{route('farmer_manage_add_crop')}}">Manage_Info</a>
                    <a class="collapse-item" href="{{route('order_info')}}">order_info</a>
                </div>
            </div>
        </li>
    </ul>


    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                            <form action="{{route('search')}}" method="get" class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" name="search1" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                    <input name="btn" type="submit" value="search">
                                </div>
                            </form>
                        </div>
                    </li>

                </ul>

            </nav>

            @yield('body')
        </div>
    </div>
</div>
</body>


<script>
    initSample();
</script>
<script src="{{url('public/admin/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{url('public/admin/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{url('public/admin/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
<script src="{{url('public/admin/js/sb-admin-2.min.js')}}"></script>
<script src="{{url('public/admin/vendor/chart.js/Chart.min.js')}}"></script>
<script src="{{url('public/admin/js/demo/chart-area-demo.js')}}"></script>
<script src="{{url('public/admin/js/demo/chart-pie-demo.js')}}"></script>

</html>
