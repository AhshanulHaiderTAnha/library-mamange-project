
{{-- {{dd($publishers)}}  --}}
@extends('crudbooster::admin_template')
@section('content')

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
	
<table id="example" class="table table-striped table-bordered stripe hover" style="width:100%">
        <thead>
            <tr>

                <th>SL</th>
                <th>Book Name</th>
                <th>Book Code</th>
                <th>Image</th>
                <th>Book Quantity</th>
                <th>Book Available</th>
              
                
               
            
            </tr>

        </thead>
        
        <tbody>
            @foreach ($booklists as $row)
              <tr>
                  <td>{{$loop->index +1}}</td>
                  <td>{{$row->book_name}}</td>
                  <td>{{$row->book_code}}</td>
                  <td> <img src="{{URL::to($row->cover_image) }}" height="50px;"> </td>
                  <td>{{$row->book_quantity}}</td>
                  <td>{{$row->book_available}}</td>
                  
                
              </tr>
              @endforeach
          </tbody>

    </table>


    <script>

      $(document).ready(function() {
    $('#example').DataTable();
} );

    </script>






@endsection