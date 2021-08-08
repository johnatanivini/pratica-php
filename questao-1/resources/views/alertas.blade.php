@if(session('error')) 
    <div class="d-flex justify-content-center alert alert-danger mt-5">
        <span data-dismiss="alert">
            {{@session('error')}}
        </span>
    </div>
@endif  

@if(session('success')) 
    <div class="d-flex justify-content-center alert alert-success mt-5">
        <span data-dismiss="alert">
            {{@session('success')}}
        </span>
    </div>
@endif

@if($errors->all())
    <div class="alert alert-warning mt-5">
        <span data-dismiss="alert">x</span>
    @foreach ($errors->all() as $error)
        <p>
           {{ $error }}
        </p>
        @endforeach
    </div>
@endif