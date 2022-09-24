@extends('users.layout')

@section('content')
<div class="container mt-5">
  <div class="card">
    <div class="card-header font-weight-bold">
      <div class="pull-left">
        <h2>Show User</h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('users.index') }}"> Back</a>
      </div>
    </div>
    <div class="card-body">

      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>Name:</strong>
            {{ $user->name }}
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>Email:</strong>
            {{ $user->email }}
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>Gender:</strong>
            {{ ucfirst($user->gender) }}
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>Mobile number:</strong>
            {{ ucfirst($user->mobile_number) }}
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>DOB:</strong>
            {{  $user->dob }}
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="form-group">
            <strong>Age:</strong>
            {{ ucfirst($user->age) }}
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
@endsection