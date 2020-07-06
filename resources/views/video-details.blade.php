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
  <body>
     <nav class="navbar navbar-light bg-light justify-content-between">
  <a href="{{ url('/') }}" class="navbar-brand" style="color: green;">Ready Mart LTD.</a>
  @auth
  <a href="{{ url('/home') }}" class="btn btn-outline-success my-2 my-sm-0" >Home</a>
@else
  <a href="{{ route('login') }}" class="btn btn-outline-success my-2 my-sm-0" >Login</a>
@endauth
  </nav><br>

 <div class="container-fluid ">
  <div style="padding-left: 300px">
  <div class="card w-75">
  <div class="card-body">
    <h5 class="card-title">{{ $Videos->title }}</h5>
    <iframe width="100%" height="300" src="{{ $Videos->link }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <p style="padding-left: 5px" class="card-text"><br>{!! nl2br ($Videos->description ) !!}</p>
    <div style="text-align: left;">
    <h4><b>Share :</b></h4>
   <a href="#"><i class="fa fa-facebook" aria-hidden="true">Facebook</i></a>
    <a href="#"><i class="fa fa-youtube-play" aria-hidden="true">YouTube</i></a>
    <a href="#"><i class="fa fa-twitter" aria-hidden="true">twitter</i></a>
    </div>
    <div style="text-align: right;">
    <a  href="{{ url('/') }}" type="submit" class="btn btn-danger waves-effect waves-light">Back To Home</a>
    </div>
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