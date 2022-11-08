
@extends('Backend.layouts.master')
@section('content')

<div class="page">
<header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span>My Book Circulation History</span><strong Dashboard</strong></div></a></div>
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
                <th>Name</th>
                <th>Date</th>
                <th>Book Name</th>
                <th>Taka</th>
                <th>Duration</th>
                <th>Member ID</th>
                <th>Status</th>
                
            </tr>
        </thead>
        <tbody>
          @foreach ($booklatefines as $row)
            <tr>
                <td>{{$loop->index +1}}</td>
                <td>{{$row->name}}</td>
                <td>{{$row->updated_at }}</td>
                <td>{{$row->book_name}}</td>
                <td>{{$row->fines_ammount}}</td> 
                <td>{{$row->day_duration }}</td>
                <td>{{$row->versity_id}}</td>
                <td>{{$row->status }}</td>
                

                
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