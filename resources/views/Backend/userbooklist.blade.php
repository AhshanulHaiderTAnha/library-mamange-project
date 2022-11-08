
@extends('Backend.layouts.master')
@section('content')

<div class="page">
<header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span>Book List & Avaible List</span><strong Dashboard</strong></div></a></div>
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
	  
      <div class="card-body">

<table id="example1" class="table table-bordered table-hover">
<thead>
            <tr>

                <th>SL</th>
                <th>Book Code</th>
                <th>Book Name</th>
                <th>Book Description</th>
                <th>Book_Available</th>
                <th>Image</th>
                
            </tr>
        </thead>
        <tbody>
          @foreach ($booklists as $row)
            <tr>
                <td>{{$loop->index +1}}</td>
                <td>{{$row->book_code}}</td>
                <td>{{$row->book_name}}</td>
                <td>{{$row-> book_description}}</td> 
                <td>{{$row->book_available}}</td>
                <td> <img src="{{URL::to($row->cover_image) }}" height="40px;"> </td>

                
                </tr>
            @endforeach
        </tbody>

    </table>

    <script>
      $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
</div> 

</section>

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