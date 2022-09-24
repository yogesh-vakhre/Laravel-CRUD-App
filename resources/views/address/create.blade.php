@extends('users.layout')

@section('content')
<div class="container mt-5">
  <div class="card">
    <div class="card-header font-weight-bold">
      <div class="pull-left">
        <h2>Create Address</h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('address.index') }}"> Back</a>
      </div>
    </div>
    <div class="card-body">
      @include('alert-message')
      @if ($errors->any())
        <div class="alert alert-danger" role="alert">
          <ul type="none">
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
      <div class="jumbotron jumbotron-fluid" id="dataAdd">
        <form name="user-add" id="user-add" method="post" action="{{route('address.store')}}">
          @csrf
          <div class="container">
            <div class="form-row">
              <div class="form-group col-md-5">
                <label>Address</label>
                <input class="form-control" id="address" name="addMoreInputFields[0][address]" type="text" />
              </div>
              <div class="form-group col-md-3">
                <label>State</label>
                <input class="form-control" id="state" name="addMoreInputFields[0][state]" type="text" />
              </div>
              <div class="form-group col-md-2">
                <label>City</label>
                <input class="form-control" id="city" name="addMoreInputFields[0][city]" type="text" />
              </div>
              <div class="form-group col-md-2">
                <label>Pincode</label>
                <input class="form-control" id="pincode" name="addMoreInputFields[0][pincode]" type="text" />
              </div>
            </div>
          </div>
          <button type="button" class="btn btn-success ml-3" id="addRow">Add row</button>
          <button type="button" class="btn btn-danger" id="deleteRow">Delete row</button>
      </div>
      <button type="submit" class="btn btn-primary ">Submit</button>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {

  $("#addRow").click(function() {

    var len = $('#dataAdd .container .form-row').length + 1;

    //if(len&gt;1) 

    $("#dataAdd .container:last").append(`<div class="form-row">
            <div class="form-group col-md-5">
              <label>Address</label>
              <input class="form-control" id="address${len}" name="addMoreInputFields[${len}][address]" type="text" />
            </div>
            <div class="form-group col-md-3">
              <label>State</label>
              <input class="form-control" id="state${len}" name="addMoreInputFields[${len}][state]" type="text" />
            </div>
            <div class="form-group col-md-2">
              <label>City</label>
              <input class="form-control" id="city${len}" name="addMoreInputFields[${len}][city]" type="text" />
            </div>
            <div class="form-group col-md-2">
              <label>Pincode</label>
              <input class="form-control" id="pincode${len}" name="addMoreInputFields[${len}][pincode]" type="text" />
            </div>
            
          </div>`);

  });
});


$("#deleteRow").click(function() {

  var len = $('#dataAdd .container .form-row').length;
  if (len > 1) {

    $("#dataAdd .container .form-row").last().remove();
  } else {
    alert('Not able to Delete');
  }
});
</script>
@endsection