@extends('users.layout')

@section('content')
<div class="container mt-5">
  <div class="card">
    <div class="card-header font-weight-bold">
      <div class="pull-left">
        <h2>Edit User</h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('users.index') }}"> Back</a>
      </div>
    </div>
    <div class="card-body">
      <form name="user-add" id="user-add" method="post" action="{{ route('users.update',$user->id) }}">
        @csrf
        @method('PUT')  
        <div class="form-group">
          <label for="name">Name<span class="text-danger">*</span> </label>
          <input type="text" id="name" name="name" value="{{ $user->name }}"  class="@error('name') is-invalid @enderror form-control">
          @error('name')
          <div class="text-danger mt-1 mb-1">{{ $message }}</div>
          @enderror
        </div>
        <div class="form-group">
          <label for="email">Email<span class="text-danger">*</span> </label>
          <input type="text" id="email" name="email" value="{{ $user->email }}" class="@error('email') is-invalid @enderror form-control">
          @error('email')
          <div class="text-danger mt-1 mb-1">{{ $message }}</div>
          @enderror
        </div>
        <div class="form-group">
          <label for="gender">Gender</label>
          <div class="radio">
            <input type="radio" name="gender" value="male" {{ ($user->gender =='male')?'checked=""':'' }}>Male
            <input type="radio" name="gender" value="female" {{ ($user->gender =='female')?'checked=""':'' }}>Female
          </div>
          <label id="gender-error" class="error" for="gender"></label>
        </div>
        <div class="form-group">
          <label for="mobile_number">Mobile number<span class="text-danger">*</span> </label>
          <input name="mobile_number" value="{{ $user->mobile_number }}" class="@error('mobile_number') is-invalid @enderror form-control">
          @error('mobile_number')
          <div class="text-danger mt-1 mb-1">{{ $message }}</div>
          @enderror
        </div>
        <div class="form-group">
          <label for="dob">DOB<span class="text-danger">*</span> </label>
          <input type="date" name="dob" value="{{ $user->dob }}" class="@error('dob') is-invalid @enderror form-control">
          @error('dob')
          <div class="text-danger mt-1 mb-1">{{ $message }}</div>
          @enderror
        </div>
        <div class="form-group">
          <label for="age">Age<span class="text-danger">*</span> </label>
          <select name="age" class="@error('age') is-invalid @enderror form-control">
            <option value="">Select</option>
            @for($i=20; $i<=100; $i++) <option value="{{ $i }}" {{ ($user->age ==$i)?'selected=""':'' }}>{{ $i }}</option>
              @endfor
          </select>

          @error('age')
          <div class="text-danger mt-1 mb-1">{{ $message }}</div>
          @enderror
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>
<script>
if ($("#user-add").length > 0) {
  $("#user-add").validate({
    rules: {
      name: {
        required: true,
        maxlength: 80
      },
      email: {
        required: true,
        email: true,
        maxlength: 50
      },
      gender: {
        required: true,
      },
      dob: {
        required: true,
        date: true
      },
      age: {
        required: true,
      },
      mobile_number: {
        required: true,
        minlength: 10,
        maxlength: 10,
        number: true
      },
    },
    messages: {
      name: {
        required: "Please enter name",
      },
      email: {
        required: "Email is required",
        email: "Email must be a valid email address",
        maxlength: "Email cannot be more than 50 characters",
      },
      gender: {
        required: "Please select the gender",
      },
      dob: {
        required: "Date of birth is required",
        date: "Date of birth should be a valid date"
      },
      age: {
        required: "Please enter age",
      },
      mobile_number: {
        required: "Mobile number is required",
        minlength: "Mobile number must be of 10 digits"
      }
    },
  })
}
</script>
@endsection