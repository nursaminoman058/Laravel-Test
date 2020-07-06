<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
      <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet"  href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Ready Mart LTD.</title>
  </head>
  <body >
    <nav class="navbar navbar-light bg-light justify-content-between">
  <a href="#" class="navbar-brand" style="color: green;">Ready Mart LTD.</a>
  @auth
  <a href="{{ url('/home') }}" class="btn btn-outline-success my-2 my-sm-0" >Home</a>
@else
  <a href="{{ route('login') }}" class="btn btn-outline-success my-2 my-sm-0" >Login</a>
@endauth
  </nav>

   <!-- video banner  section -->
<div class="row">

  <div class="col-6">
    <div class="card bg-dark text-white">
  <img height="300" width="100%" src="https://www.wyzowl.com/wp-content/uploads/2018/12/The-21-Best-Video-Editing-Apps-for-Android-iPhone-and-iPad.png">

  
  <a href="#"><h5 style="padding-left: 5px" class="card-title"><i class="fa fa-youtube-play" aria-hidden="true"> </i>BANGLA FIVE | CONFUSION Audio (Tomay Ami Chinina) Bangla band song কনফিউশন বাংলা ফাইভ ব্যান্ড</h5></a>
   <p style="padding-left: 5px" class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
</div>

<br><hr>
 <!-- video banner section end -->
  <!-- video post section  -->
<div class="row" style="background-color: #343a40;">

  @foreach($Video as $Videos)
   
                                  @if ($Videos['video_status']==1)
                                       <div class="col-6">
<iframe  src="{{ $Videos->link }}" allowfullscreen></iframe>
  
    <a href="{{ url('/video-details') }}/{{ $Videos->id }}"><p style="padding-left: 5px" class="card-title"><i class="fa fa-youtube-play" aria-hidden="true"> </i>{{ $Videos->title }}</p></a>
  </div>
                                  @elseif ($Videos['video_status']==2)
                                      
                                  @endif

 


@endforeach
  
 <!-- post section end  --> 
</div>
  </div>
  <!--  post section  -->
  <div class="col-6">
    <!--  post banner section end  -->
  <div class="card bg-white ">
  <a href="#"><img height="300" width="100%" src="https://mythemeshop.com/wp-content/uploads/2017/06/Writing-a-Stunning-Blog-Post.jpg"></a>

  
  <a href="#"><h5 style="padding-left: 5px" class="card-title"></i> This is a wider card with supporting text below as a natural lead-in to additional content.</h5></a>
   <p style="padding-left: 5px" class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

</div><br><hr>
<!--  post banner section end  -->


<div class="row">
  <!--  post section end  -->

@foreach($post as $posts)
                @if ($posts['video_status']==1)
  <div class="col-6">
  <div class="card bg-white ">
  <a href="#"><img height="200" width="100%" src="{{ url('/images/post/').'/'.$posts->image ?? 'N/A' }}"></a>
<a href="{{ url('/post-details') }}/{{ $posts->id }}"><h5 style="padding-left: 5px" class="card-title"></i>{{ $posts->title }}</h5></a>

       </div> 
    </div>
     
    @elseif ($posts['video_status']==2)
                                      
    @endif
    @endforeach
    <!-- post end section -->

   
   
  </div>

</div>


  </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body><br>
  <footer>
    
     <div style="text-align: center;" class="card-footer text-muted">
     All Rights Reserved © 2020 <a href="https://www.facebook.com/nursaminoman0/">Nur Sami Noman</a>
  </div>

  </footer>
</html>