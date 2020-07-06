@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <h5 class="card-header">Welcome To Admin Dashboard !</h5>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

<h5 class="header-title mb-4 text-center "><b>Add Video :</b></h5>
                       <hr>

                       @if (session('Success'))
                         <div class="alert alert-success alert-dismissible fade show" role="alert">
                         <strong>Hey !</strong>   {{ session('Success') }}
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                         </button>
                       </div>
                         <hr>
                       @endif

                                  <form action="{{url('/videopost') }}" method="post" >
                                          @csrf
                                           <div class="form-group row">
                                               <label for="name" class="col-3 col-form-label">Title :</label>
                                               <div class="col-9">
                                                 <input type="text"  class="form-control" id="title" placeholder="Enter a Video Title" name="title">
                                                 @error('title')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror
                                               </div>
                                           </div>
                                           <div class="form-group row">
                                               <label for="link" class="col-3 col-form-label">YouTube Video Link :</label>
                                               <div class="col-9">
                                                 <input type="text"  class="form-control" id="link" placeholder="Enter YouTube Embed Video Link,EX:https://www.youtube.com/embed/-24zBDFTG28" name="link">
                                                 @error('link')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror
                                               </div>
                                           </div>

                                           
                                          
                                           <div class="form-group row">
                                               <label for="description" class="col-3 col-form-label">Description :</label>
                                               <div class="col-9">
                                                 <textarea type="text"  class="form-control" id="description" placeholder="Enter a Video Description" name="description"> </textarea>
                                                 @error('description')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror

                                               </div>
                                           </div>
                                           
                                           
                                           
                                           

                                           <div class="form-group mb-0 justify-content-end row">
                                               <div class="col-9">
                                                   <button type="submit" class="btn btn-info waves-effect waves-light">Submit</button>
                                                   <a  href="{{ route('home') }}" type="submit" class="btn btn-danger waves-effect waves-light">Cancel</a>
                                               </div>
                                           </div>
                                         </from>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

