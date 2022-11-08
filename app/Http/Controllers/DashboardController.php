<?php

namespace App\Http\Controllers;

use App\Http\UserController;
use DB;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    
    public function issuedbook (){
        $data = [];

        $data['bookscirculation'] = DB::table('bookscirculation')
        ->join('booklists','bookscirculation.book_name','booklists.id')
        ->join('users','bookscirculation.users_name','users.id')

        ->select('bookscirculation.*','booklists.book_name','users.name')->where('status','Issued')->get();

        return view('Backend.issuedpage',$data);

    }

    public function reserved (){
        $data = [];

        $data['bookscirculation'] = DB::table('bookscirculation')
        ->join('booklists','bookscirculation.book_name','booklists.id')
        ->join('users','bookscirculation.users_name','users.id')

        ->select('bookscirculation.*','booklists.book_name','users.name')->where('status','Reserved')->get();

        return view('Backend.reservedpage',$data);

    }

    public function overdue (){
       
        $now = date("Y-m-d H:i:s");
        $data = [];
        $data['bookscirculation'] = DB::table('bookscirculation')
        ->join('booklists','bookscirculation.book_name','booklists.id')
        ->join('users','bookscirculation.users_name','users.id')
        
        ->where('return_date', '<', $now)
        ->where('status','Issued')
        ->select('bookscirculation.*','booklists.book_name','users.name')->get();
       
        // dd($data);
        return view('Backend.overduepage',$data);

        
    }

    public function publisher (){

        $data = [];
        
        $data['publishers'] = DB::table('publishers')
        
        ->select('publishers.*','publishers.name','publishers.address')->get();

        return view('Backend.publisherspage', $data);

        
    }

    public function author (){

        $data = [];
        
        $data['authors'] = DB::table('authors')
        
        ->select('authors.*')->get();

        return view('Backend.authorspage', $data);

    }

    public function booklists (){

        $data = [];
        
        $data['booklists'] = DB::table('booklists')->get();

        return view('Backend.bookslistpage', $data);


    }

    public function memberlist (){

        
        $data = [];
        
        $data['users'] = DB::table('users')
        ->join('department','users.dept_id','department.id')
        ->select('users.*','department.dept_name')->get();
       
        return view('Backend.memberlist', $data);
    }

}
