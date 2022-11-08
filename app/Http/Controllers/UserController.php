<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Auth;
use Image;
use DB;
use Cache;

class UserController extends Controller
{
    

           public function viewprofile(){

        return view('Backend.profile' , array('user' => Auth::user()));
                                            
               
              }


             public function updateAvatar(Request $request){

               
            // Logic for user upload of avatar
              if($request->hasFile('avatar')){
                 $avatar = $request->file('avatar');
                $filename = time() . '.' . $avatar->getClientOriginalExtension();

                Image::make($avatar)->resize(250, 250)->save( public_path('/uploads/avatars/' . $filename ) );
                $user = Auth::user();
                $user->avatar = $filename;

                 $user->save();
                                                            }
                return view('Backend.profile', ['user' => Auth::user()] );

                  }
                  public function update_account(Request $request){
                                                        
                                                            
                         $user = Auth::user();
                       
                          $user->password = bcrypt($request->password);

                          $user->password = \Hash::make($request->input('password'));
                        
                            $user->save();
                                                               
                              return view('Backend.profile')->withUser($user);
                                                               
                                                        
                                                
                          }
                         
                         
                          
                           public function bookslist (){
                           
                            $data = [];
                         
                            $data['booklists'] = DB::table('booklists') ->get();

                            
                           
                            //dd($data);
                            return view('Backend.userbooklist', $data);                    
                        }    

                        public function Authbookcirculation (){


          
                          $data = [];
                          
                          $data['bookscirculation'] = DB::table('bookscirculation') 

                          ->join('booklists','bookscirculation.book_name','booklists.id')

                          ->where('users_name', Auth::id())->get();

                          //dd($data);
                          return view('Backend.authbookcirculation', $data);                    
                      }    

                      public function Authfines (){

                       $data =[];
                       
                       $data['booklatefines']=DB::table('booklatefines')
                       ->join('booklists','booklatefines.book_name','booklists.id')
                       ->select('booklatefines.*','booklists.book_name')   
                       ->where('booklatefines.user_id', Auth::id())->get();

                        return view('Backend.authfines',$data);    

                    }    

                    
}







