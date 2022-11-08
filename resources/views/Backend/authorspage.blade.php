
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
                <th>Authors Name</th>
                <th>Details</th>
               
            
            </tr>
        </thead>
        
        <tbody>
            @foreach ($authors as $row)
              <tr>
                  <td>{{$loop->index +1}}</td>
                  <td>{{$row->name}}</td>
                  <td>{{$row->details}}</td>
                
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