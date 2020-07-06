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

<h5 class="header-title mb-4 text-center "><b>Add Post :</b></h5>
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



                                  <form action="{{url('/frompost') }}" method="post" enctype="multipart/form-data">
                                          @csrf
                                           <div class="form-group row">
                                               <label for="name" class="col-3 col-form-label">Title :</label>
                                               <div class="col-9">
                                                 <input type="text"  class="form-control" id="title" placeholder="Enter a Post Title" name="title">
                                                 @error('title')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror
                                               </div>
                                           </div>

                                           
                                          
                                           <div class="form-group row">
                                               <label for="description" class="col-3 col-form-label">Description :</label>
                                               <div class="col-9">
                                                 <textarea type="text"  class="form-control" id="description" placeholder="Enter a Post Description" name="description"> </textarea>
                                                 @error('description')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror

                                               </div>
                                           </div>
                                           
                                           
                                           
                                           
                                           <div class="form-group row">
                                               <label for="product_thumbnail" class="col-3 col-form-label">Image : 300x500</label>
                                               <div class="col-9">
                                                 <input   type="file"  class="form-control @error('image') is-invalid @enderror " id="image"  name="image" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                                                 @error('image')
                                                 <div class="alert alert-danger">{{ $message }}</div>
                                               @enderror

@if (session('insert'))
                                               <div class="alert alert-danger">
        <strong>Hey!</strong> <a  class="alert-link">{{ session('insert') }}</a>.
</div>
@endif
                                               </div>
                                           </div>
                                           <div class="form-group row">
                                               <label for="image" class="col-3 col-form-label">Image  Preview :</label>
                                               <img id="blah" alt=".........Image" width="300" height="200" />
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

