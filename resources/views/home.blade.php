@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <h5 class="card-header">Welcome To Admin Dashboard !</h5>

                <div class="card-body">
                    <a href="{{ url('/') }}" class="btn btn-info my-2 my-sm-0" >Back To Website</a>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>

                    @endif

                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

