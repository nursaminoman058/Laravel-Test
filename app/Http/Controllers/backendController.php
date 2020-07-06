<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Image;
use App\Video;
use App\Blog;

class backendController extends Controller
{
	function __construct(){
 $this->middleware('auth');
}
    function from()
    {
    	return view('from');
    }

    function fromPost(Request $request)
       {
        
        $request->validate([

            'title'=>['required','min:5','Max:100',],//'unique:Blogs',
            'description'=>['required'],
            

        ]);
       if ($request->image=='') {
       	return back()->with('insert','please insert a image');
       }else{
           
           if($request->hasFile('image')) {
        $image= $request->file('image');
        $ext =$request->title.'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(600, 622)->save(public_path('images/post/'.$ext));

        Blog::insertGetId([
                
                'title'=>$request->title,
                'image'=>$ext,
                'description'=>$request->description,
                ]);
        return back()->with('Success','Your Post Add Successfuly');
            }
        }

       
    	
       }

       function PostView()
    {
    	$Blog=Blog::all();
    	return view('post-view',compact('Blog'));
    }
    function StatusUpdateunp($id){

              Blog::findOrfail($id)->update([
                   'video_status'=>'2',
                ]);

                return back()->with('Unpublish','Your Video is Unpublish  Successfuly');
              }
         function StatusUpdatepub($id){

              Blog::findOrfail($id)->update([
                   'video_status'=>'1',
                ]);

                return back()->with('Publish','Your Video Publish  Successfuly');
              }


       function Video()
    {
    	return view('video');
    }
    function VideoPost(Request $request)
       {
        
         $request->validate([

            'title'=>['required','min:5','Max:100','unique:videos',],
            'link'=>['required','unique:videos',],
            'description'=>['required'],

        ]);

         Video::insertGetId([
                
                'title'=>$request->title,
                'link'=>$request->link,
                'description'=>$request->description,
                
              

                ]);




       
    	return back()->with('Success','Your Video Add Successfuly');
        
       }

       function VideoView()
    {
    	$Video=Video::all();
    	return view('video-view',compact('Video'));
    }
    function StatusUpdate($id){

              Video::findOrfail($id)->update([
                   'video_status'=>'2',
                ]);

                return back()->with('Unpublish','Your Video is Unpublish  Successfuly');
              }
         function StatusUpdateP($id){

              Video::findOrfail($id)->update([
                   'video_status'=>'1',
                ]);

                return back()->with('Publish','Your Video Publish  Successfuly');
              }

}
