<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>PST System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="{{asset('bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('bower_components/font-awesome/css/font-awesome.min.css')}}">
        <!-- Ionicons -->
        <link rel="stylesheet" href="{{asset('bower_components/Ionicons/css/ionicons.min.css')}}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{asset('dist/css/AdminLTE.min.css')}}">
        <link rel="stylesheet" href="{{asset('dist/assets/angular-growl.min.css')}}">
        <link rel="stylesheet" href="{{asset('dist/js/vendor/cfploader/loading-bar.css')}}">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="{{asset('dist/css/skins/_all-skins.min.css')}}">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

      </head>
    <body class="hold-transition skin-purple sidebar-colapsed sidebar-collapse fixed" ng-app='testingApp' >
        <!-- Site wrapper -->
        <div class="wrapper" ng-controller='MainCtrl'>

            <header class="main-header">
                <!-- Logo -->
                <a href="{{ url('/auth/success')}}" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>PTS</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Pyschometric </b> Testing System</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                   
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            @if(!Auth::check())
                            <li><a href="{{ url('/home')}}">Home</a></li>
                            <li><a href="{{ url('/register')}}">Register</a></li>
                            <li><a href="{{ url('/login')}}">Login</a></li>
                           @endif

                           @if(Auth::check() && Auth::user()->is_admin)
                            <li><a href="{{ url('/admin/reports')}}">Reports</a></li>
                            <li><a href="{{ url('/test/create')}}">Create Test</a></li>
                            
                           @endif


                           @if(Auth::check())
                            <li><a href="{{ url('/test')}}">Tests</a></li>
                              @if(!Auth::user()->is_admin)
                            <li><a href="{{ url('/score')}}">My Scores</a></li>
                            @endif
                            <li><a href="{{ url('/user')}}">{{ Auth::user()->name }}</a></li>
                            <li><a href="{{ url('/logout')}}">Logout</a></li>
                           @endif


                            
                        </ul>
                    </div>
                </nav>
                @yield('test_menu')
            </header>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">

                <div growl ttl="1000"></div>
                
                 @yield('content_header')
                <!-- Main content -->
                <section class="content">

                       @yield('content')
                    

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

        <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright © Alco Systems <?php echo date("Y")?></strong> All rights
    reserved.
  </footer>
        </div>
        <!-- ./wrapper -->
        <!-- AngularJS -->
        <!-- jQuery 3 -->
        <script src="{{asset('bower_components/jquery/dist/jquery.min.js')}}"></script>
        <script src="{{asset('dist/js/angular.min.js')}}"></script>
        <script src="{{asset('app/app.js')}}"></script>
         <script src="{{asset('dist/js/lib/angular-growl.min.js')}}"></script>
        
        <!-- Bootstrap 3.3.7 -->
        <script src="{{asset('bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
        <!-- SlimScroll -->
        <script src="{{asset('bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
        <!-- FastClick -->
        <script src="{{asset('bower_components/fastclick/lib/fastclick.js')}}"></script>
        <!-- AdminLTE App -->
        <script src="{{asset('dist/js/adminlte.min.js')}}"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{asset('dist/js/demo.js')}}"></script>
        <script>
            $(document).ready(function () {
                $('.sidebar-menu').tree()
            });
            $(document).ajaxStart(function() { Pace.restart(); }); 
        </script>

    </body>
</html>
