

    @extends('layouts.app')

@section('content')
<div class="container">
<h5 class="card-header">Welcome To Admin Dashboard !</h5>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

<h5 class="header-title mb-4 text-center "><b>Post List :</b></h5>
                       <hr>

                       @if (session('Unpublish'))
                         <div class="alert alert-danger alert-dismissible fade show" role="alert">
                         <strong>Hey !</strong>   {{ session('Unpublish') }}
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                         </button>
                       </div>
                         <hr>
                       @endif

                       @if (session('Publish'))
                         <div class="alert alert-success alert-dismissible fade show" role="alert">
                         <strong>Hey !</strong>   {{ session('Publish') }}
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                         </button>
                       </div>
                         <hr>
                       @endif

                         <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">SL.</th>
      <th scope="col">Title</th>
      <th scope="col">Image</th>
      <th scope="col">Description</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>

       @foreach($Blog as $key => $Blogs)
    <tr>
      <th scope="row">{{ $Blogs->id  }}</th>
      <td>{{ $Blogs->title }}</td>
      <td><img style="border-radius: 30px;" src="{{ url('/images/post/').'/'.$Blogs->image ?? 'N/A' }}" width="150" ></td>
      <td><textarea>{{ $Blogs->description }}</textarea></td>
      

                                  @if ($Blogs['video_status']==1)
                                      <td><a  href="{{ url('/updatep') }}/{{ $Blogs->id }}"  class="btn btn-success waves-effect waves-light">Publish</td>
                                  @elseif ($Blogs['video_status']==2)
                                      <td><a  href="{{ url('/updateunp') }}/{{ $Blogs->id }}"  class="btn btn-danger waves-effect waves-light">Unublish</td>
                                  @endif</a>
      

    </tr>
    @endforeach

    
  </tbody>
</table>

<a  href="{{ route('home') }}" type="submit" class="btn btn-danger waves-effect waves-light">Back</a>

@endsection

