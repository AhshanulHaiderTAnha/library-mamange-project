
@extends('Backend.layouts.master')
@section('content')

  
    <div class="page">
	
	
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="{{url('home')}}" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span>{{ Auth::user()->name }} OverView Dashboard</span><strong Dashboard</strong></div></a></div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

				
                    <ul clas="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                    <a class="nav-item" data-toggle="dropdown" hraf="">
                    <span>{{ Auth::user()->name }}</span> 
                 
                    </a>

                    
            <li class="nav-item"><a href="{{ route('logout') }}"
                   onclick="event.preventDefault();
           document.getElementById('logout-form').submit();" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
        
	            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf 
                                    </form>

              </ul>
            
          </div>
        </nav>
      </header>
      <section class="dashboard-counts section-padding">
        <div class="container-fluid">
          <div class="row">
            <!-- Count item widget-->
            
               
                </div>
              </div>
            </div>

            
            
            
                  
               
            </div>
					
          </div>
        </div>
      </section>
      <!-- Header Section-->
	  
      
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>ISTT LMS &copy; 2020</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Dev by Tanha</p>
            </div>
          </div>
        </div>
      </footer>
    </div>
	

    @endsection
	
    