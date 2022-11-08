<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use DateTime;

	class AdminBookscirculationController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "book_name";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "bookscirculation";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Book Name","name"=>"book_name","join"=>"booklists,book_name"];
			$this->col[] = ["label"=>"Member Name","name"=>"users_name","join"=>"users,name"];
		
			//$this->col[] = ["label"=>"Book Quantity","name"=>"book_quantity"];
			$this->col[] = ["label"=>"Issue Date","name"=>"issue_date"];
			$this->col[] = ["label"=>"Return Date","name"=>"return_date"];
			$this->col[] = ["label"=>"Re Submit Date","name"=>"re_submit_date"];
			$this->col[] = ["label"=>"Note","name"=>"note"];
			$this->col[] = ["label"=>"Status","name"=>"status"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Book Name','name'=>'book_name','type'=>'select2','datatable'=>'booklists,book_name','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Member Name','name'=>'users_name','type'=>'select2','datatable'=>'users,name','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
		
			//$this->form[] = ['label'=>'Book Quantity','name'=>'book_quantity','type'=>'number','validation'=>'required|min:1|max:1','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Issue Date','name'=>'issue_date','type'=>'date','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Return Date','name'=>'return_date','type'=>'date','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Re Submit Date','name'=>'re_submit_date','type'=>'date','validation'=>'min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Note','name'=>'note','type'=>'textarea','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Status','name'=>'status','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'Returns;Issued;Reserved;'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Book Name","name"=>"book_name","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Users Name","name"=>"users_name","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Issue Date","name"=>"issue_date","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Return Date","name"=>"return_date","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Re Submit Date","name"=>"re_submit_date","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Note","name"=>"note","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Status","name"=>"status","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
			

            $st= $postdata['book_name'];

			if($st == $postdata['book_name']){

			

			DB::table('booklists')->where('id',$postdata['book_name'])
			
			->update(['book_available' => DB::raw('book_available-1')]);

	    	}else{}

        
 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {    

		$st= $postdata['book_name'];

			if($st == $postdata['book_name']){
	
	      DB::table('booklists')->where('id',$postdata['book_name'])
	    ->update(['book_available' => DB::raw('book_available+1')]);

		}
		else{
			
		}

		
		$testinfo = DB::table('bookscirculation')
		->join('users','bookscirculation.users_name','users.id')
		->join('booklists','bookscirculation.book_name','booklists.id')
		->join('department','users.dept_id','department.id')
		->select('bookscirculation.*','users.*','booklists.id','department.*')
		->where('bookscirculation.id',$id )
		->get();
   //dd($testinfo);
		foreach($testinfo as $uinfo){	
		}

		$r_d = $uinfo->return_date; //return date
		$date_r_d = DateTime::createFromFormat("Y-m-d", $r_d);
	
		$rs_d = $postdata['re_submit_date'];  //resubmit date
		$date_rs_d = DateTime::createFromFormat("Y-m-d", $rs_d);
   

		$date1 = new DateTime("$r_d");
		$date2 = new DateTime("$rs_d");
		$day_duration = $date1->diff($date2);
		$daydue=($day_duration->days);
	   //dd ( $daydue );
	   if( 1 >=   $day_duration->days){

		$book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
		  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
		   $data =[];
		   
           $data ['percentage']  = "No fines";
        

			$info =[];
			$info['name'] = $uinfo->name;
			$info['user_id'] = $uinfo->users_name;
			$info['versity_id']= $uinfo->versity_id;
			$info['mobile']=$uinfo->mobile;
			$info['dept_name']= $uinfo->dept_name;
			$info['email']= $uinfo->email;
			$info['book_name']=$uinfo->book_name ;
			$info['day_duration']=$daydue;
			
		    $info['fines_ammount']= $data['percentage'] ;
		    //dd($info);
		 DB::table('booklatefines')->insert($info);

	}
	elseif( 6 >=  $day_duration->days){

		  $book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
		  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
		   $data =[];

		   $day_duration=[];
		   $day_duration['time'] = ($day_duration->days);
           $data ['percentage']  = ( 20 * (float)$price[0] / 100 );
       
			$info =[];
			$info['name'] = $uinfo->name;
			$info['user_id'] = $uinfo->users_name;
			$info['versity_id']= $uinfo->versity_id;
			$info['mobile']=$uinfo->mobile;
			$info['dept_name']= $uinfo->dept_name;
			$info['email']= $uinfo->email;
			$info['book_name']=$uinfo->book_name ;
			$info['day_duration']=$daydue;
			$info['fines_ammount']= $data['percentage'] ;
			$info['status']="Unpaid";
		    //dd($info);
		  DB::table('booklatefines')->insert($info);
		 
	   }elseif( 12 >= $day_duration->days)
	   {
		$book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
		  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
		   $data =[];

           $data ['percentage']  = ( 35 * (float)$price[0] / 100 );

        
			$info =[];
			$info['name'] = $uinfo->name;
			$info['user_id'] = $uinfo->users_name;
			$info['versity_id']= $uinfo->versity_id;
			$info['mobile']=$uinfo->mobile;
			$info['dept_name']= $uinfo->dept_name;
			$info['email']= $uinfo->email;
			$info['book_name']=$uinfo->book_name ;
			$info['day_duration']=$daydue;
			$info['fines_ammount']= $data['percentage'] ;
			$info['status']="Unpaid";
		   //dd($info);
		 DB::table('booklatefines')->insert($info);
	   }
	   elseif( 16 >= $day_duration->days){
		$book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
		  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
		   $data =[];

           $data ['percentage']  = ( 40 * (float)$price[0] / 100 );

        
			$info =[];
			$info['name'] = $uinfo->name;
			$info['user_id'] = $uinfo->users_name;
			$info['versity_id']= $uinfo->versity_id;
			$info['mobile']=$uinfo->mobile;
			$info['dept_name']= $uinfo->dept_name;
			$info['email']= $uinfo->email;
			$info['book_name']=$uinfo->book_name ;
			$info['day_duration']=$daydue;
			$info['fines_ammount']= $data['percentage'] ;
			$info['status']="Unpaid";
		   //dd($info);
		  DB::table('booklatefines')->insert($info);

	   }elseif( 25 >= $day_duration->days){
		$book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
		  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
		   $data =[];

           $data ['percentage']  = ( 50 * (float)$price[0] / 100 );

        
			$info =[];
			$info['name'] = $uinfo->name;
			$info['user_id'] = $uinfo->users_name;
			$info['versity_id']= $uinfo->versity_id;
			$info['mobile']=$uinfo->mobile;
			$info['dept_name']= $uinfo->dept_name;
			$info['email']= $uinfo->email;
			$info['book_name']=$uinfo->book_name ;
			$info['day_duration']=$daydue;
			$info['fines_ammount']= $data['percentage'] ;
			$info['status']="Unpaid";
		   //dd($info);
		 DB::table('booklatefines')->insert($info);
	   }else{
	
			$book_id = DB::table('bookscirculation')->where('id',$id)->pluck('book_name');	
			  $price = DB::table('booklists')->where('id',$book_id)->pluck('price');
			   $data =[];
	
			   $data ['percentage']  = ( 80 * (float)$price[0] / 100 );
	
			
				$info =[];
				$info['name'] = $uinfo->name;
				$info['user_id'] = $uinfo->users_name;
				$info['versity_id']= $uinfo->versity_id;
				$info['mobile']=$uinfo->mobile;
				$info['dept_name']= $uinfo->dept_name;
				$info['email']= $uinfo->email;
				$info['book_name']=$uinfo->book_name ;
				$info['day_duration']=$daydue;
				$info['fines_ammount']= $data['percentage'] ;
				$info['status']="Unpaid";
			   //dd($info);
			   DB::table('booklatefines')->insert($info);

		   }
	
	   }

	
	    

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }

		// public function postAddSave() {

		// 	$data = [];
		// 	$data['book_name'] = Request::input('book_name');
		// 	$data['name'] = Request::input('name');
		// 	$data['target'] = Request::input('target');
		// 	$data['mobile'] = Request::input('mobile');
		// 	$data['package'] = Request::input('package');
		// 	$data['address'] = Request::input('address');
		// 	$data['join_date'] = Request::input('join_date');
		// 	$data['expire_date'] = Request::input('expire_date');

		// 	dd($data);



		// }

		


	}