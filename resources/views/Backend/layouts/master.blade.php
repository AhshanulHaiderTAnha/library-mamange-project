<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LMS Profile  Dashboard </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{asset('/MBackend/vendor/bootstrap/css/bootstrap.min.css')}}">

    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{asset('/MBackend/vendor/font-awesome/css/font-awesome.min.css')}}">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="{{asset('/MBackend/css/fontastic.css')}}">

    <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('/MBackend/AC/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}} ">
  <link rel="stylesheet" href="{{asset('/MBackend/AC/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}} ">

    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="{{asset('/MBackend/https://fonts.googleapis.com/css?family=Roboto:300,400,500,700')}}">
 
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="{{asset('/MBackend/css/grasp_mobile_progress_circle-1.0.0.min.css')}}">
  
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="{{asset('/MBackend/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css')}}">
 
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="{{asset('/MBackend/css/style.default.premium.css')}}" id="theme-stylesheet">
  
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="{{asset('/MBackend/css/custom.css')}}">
 
    <!-- Favicon-->
    <link rel="shortcut icon" href="{{asset('/MBackend/img/favicon.ico')}}">

    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <!-- Languages-->

        <meta name="csrf-token" content="{{ csrf_token() }}">

                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />

                <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">

                <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  

                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>

                <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                  <meta http-equiv="X-UA-Compatible" content="ie=edge">
                <meta name="csrf-token" content="{{ csrf_token() }}">
    
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />


                <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
                <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

  </head>

  <body>
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
          <!-- User Info-->
          <div class="sidenav-header-inner text-center"><a href="{{url('home')}}"><img src="uploads/avatars/{{auth()->user()->avatar}}" alt="person" class="img-fluid rounded-circle"></a>

            <h3 class="h4">ISTT LMS </h3><span>{{ Auth::user()->name }} Profile</span>

          </div>
          
          
          <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
        </div>
		
        <!-- Sidebar Navigation Menus-->
        @include('Backend.layouts.sidever')
        
      </div>
    </nav>
    
    @yield('content')



    <!-- JavaScript files-->

    <script src="{{asset('/MBackend/vendor/jquery/jquery.min.js')}} "></script>

    <script src="{{asset('/MBackend/vendor/bootstrap/js/bootstrap.bundle.min.js')}} "></script>
 
    <script src="{{asset('/MBackend/js/grasp_mobile_progress_circle-1.0.0.min.js')}}  "></script>

    <script src="{{asset('/MBackend/vendor/jquery.cookie/jquery.cookie.js')}} "> </script>
  
    <script src="{{asset('/MBackend/vendor/chart.js/Chart.min.js')}} "></script>

    <script src="{{asset('/MBackend/vendor/jquery-validation/jquery.validate.min.js')}}"></script>
 
    <script src="{{asset('/MBackend/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js')}}"></script>
 
	
    <script src="{{asset('/MBackend/js/charts-home.js')}}"></script>
 
	
    <!-- Notifications-->
    <script src="{{asset('vendor/messenger-hubspot/build/js/messenger.min.js')}}">   </script>
    <script src="{{asset('vendor/messenger-hubspot/build/js/messenger-theme-flat.js')}}"> </script>
    <script src="{{asset('js/home-premium.js')}}"> </script>
	
    <!-- Main File-->
      <script src="{{asset('js/front.js')}}"></script>




    <script src="{{asset('AC/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
     <script src="{{asset('AC/dist/js/demo.js')}}"></script>


<!-- DataTables -->
<script src="{{asset('/MBackend/AC/plugins/datatables/jquery.dataTables.min.js')}} "></script>
<script src="{{asset('/MBackend/AC/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('/MBackend/AC/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('/MBackend/AC/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": false,
    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>




	
  </body>
</html>
