
@extends('Backend.layouts.master')
@section('content')

<div class="page">
<header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span>Profile Details</span><strong Dashboard</strong></div></a></div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
			  
                <!-- Notifications dropdown-->
               
				
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

                <!-- Log out-->
                





              </ul>
            </div>
          </div>
        </nav>
      </header>
	  


      <section class="forms">
      
        <div class="container-fluid">
		
          <!-- Page Header-->

          <h3> Profile </h3>

          <br>  </br>
          
          <div class="row">
            <div class="col-lg-4">
              <div class="card card-profile">
               
                <div class="card-body text-center">
                <div class="card-header"> <img class="rounded-circle" class="center" src="uploads/avatars/{{auth()->user()->avatar}}" alt="User Avatar"style="width:125px;top:center; height:125px; float:center; border-radius:50px; margin-right:auto;  margin-right:auto;text-align:center;"></div>
                 
                  <h3 class="mb-3">{{auth()->user()->name}}</h3> 

		                <p class="text-muted mb-0">{{auth()->user()->email}}</p><br> </br>
				 
		
                    <form action="{{url('UserProfile')}}" method="POST" class="card"  enctype="multipart/form-data">
                    
                    @csrf

                    <div class="col-md-12">
                      <div class="form-group mb-2">

                      <label class="form-label">Image</label>
                      <input type="file" name="avatar"  id="avatar" class="form-control"><br> </br>

                    </div>
                    </div>

                    <div class="col-sm-4 col-md-2">
                    
                    <button type="submit" class="btn btn-primary">Update Image</button>
                   
                    </div>

                    </form>
                     <button class="btn btn-outline-dark btn-sm"><span class="fa fa-twitter"></span> Follow</button>
				              <button class="btn btn-outline-dark btn-sm"><span class="fa fa-twitter"></span> Follower</button>

				             <ul class="social-links list-inline mb-0 mt-2">
                        <li class="list-inline-item"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Nathan's Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="@nathan_andrews"><i class="fa fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="+420777555987"><i class="fa fa-phone"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="@nathan"><i class="fa fa-skype"></i></a></li>
                      </ul>
                </div>
              </div>
              
		
            </div>
			
			

            <div class="col-lg-8">
           
              <form action="{{url('UpdateProfile')}}" method="POST" class="card"  enctype="multipart/form-data">
                    
              @csrf

                <div class="card-body">
                  <h3 class="card-title">Edit Profile</h3>
                  <div class="row">
                    
                    <div class="col-md-12">
                      <div class="form-group mb-4">
                      
                        <label class="form-label">Username</label>
                        <input type="text" placeholder="name" name="name" value="{{auth()->user()->name}}" class="form-control" disabled>
                      </div>
                    </div>
                    
                    <div class="col-md-12">
                      <div class="form-group mb-4">
                        <label class="form-label">Email address</label>
                        <input type="text" name="email"placeholder="email" value="{{auth()->user()->email}}"  class="form-control"  disabled>
                      </div>
                    </div>
                    
                    
                    
                    <div class="col-md-12">
                      <div class="form-group mb-4">
                        <label class="form-label">University ID</label>
                        <input type="text" name="University" placeholder="Address" value="{{auth()->user()->versity_id}}"  class="form-control" disabled >
                      </div>
                    </div>

					          <div class="col-md-12">
                      <div class="form-group mb-2">
                        <label class="form-label">Mobile</label>
                        <input type="text" name="mobile" placeholder="Mobile" value="{{auth()->user()->mobile}}"  class="form-control" disabled>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group mb-2">
                        <label class="form-label">ID Type </label>
                        <input type="text" name="pvg_id" placeholder="Gender" value="{{auth()->user()->pvg_id}}"  class="form-control" disabled>
                      </div>
                    </div>


                    

                    <div class="col-md-12">
                      <div class="form-group mb-2">
                        <label class="form-label">Password</label>
                        <input type="password" name="password " placeholder="Gender" value="{{auth()->user()->password }}"  class="form-control" >
                      </div>
                    </div>


                    <div class="col-sm-6 col-md-2">
                    <br>  <br>
                    <button type="submit" class="btn btn-primary">Update Profile</button>
                   
                    </div>
                     
                    </div>
                  </div>
                </div>
                
              </form>
            
        
        
      </section>
      

    

      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>ISTT LMS &copy; 2020</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Dev By Tanha</p>
            </div>
          </div>
        </div>
      </footer>

      </div>

@endsection