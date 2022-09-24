@extends('users.layout')

@section('content')
<div class="container mt-4">
  <div class="row">
    <div class="col-lg-12 margin-tb">
      <div class="pull-left">
        <h2> Address </h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-success my-2" href="{{ route('address.create') }}"> Create New Address</a>
      </div>
    </div>
  </div>

  @include('alert-message')
  <form method="GET" action="{{ route('address.index') }}">
    <div class="py-2 flex">
      <div class="form-group">
        <input type="search" name="search" value="{{ request()->input('search') }}" class="w-50 form-control"
          placeholder="Search">
        <button type='submit' class='btn btn-primary flax-inline my-1'>
          {{ __('Search') }}
        </button>
      </div>
    </div>
  </form>
  <table class="table table-bordered">
    <tr>
      <th>No</th>
      <th>Address</th>
      <th>State</th>
      <th>City</th>
      <th>Pincode</th>
      <th width="150px">Action</th>
    </tr>
    @foreach ($address as $addr)
    <tr>
      <td>{{ $loop->iteration }}</td>
      <td>{{ $addr->address }}</td>
      <td>{{ $addr->state }}</td>
      <td>{{ $addr->city }}</td>
      <td>{{ $addr->pincode }}</td>
      <td>
        <form action="{{ route('address.destroy',$addr->id) }}" method="POST">
          @csrf
          @method('DELETE')
          <!-- <a class="btn btn-primary" href="{{ route('users.edit',$addr->id) }}">Edit</a> -->
          <button type="submit" class="btn btn-danger">Delete</button>
        </form>
      </td>
    </tr>
    @endforeach
  </table>

  {!! $address->appends(request()->query())->links() !!}
</div>
@endsection