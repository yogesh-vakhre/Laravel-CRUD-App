@extends('users.layout')

@section('content')
<div class="container mt-4">
  <div class="row">
    <div class="col-lg-12 margin-tb">
      <div class="pull-left">
        <h2>User CRUD </h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-success my-2" href="{{ route('users.create') }}"> Create New user</a>
        <a class="btn btn-warning" href="{{ route('address.index') }}">View Address</a>
      </div>
    </div>
  </div>

  @include('alert-message')
  <form method="GET" action="{{ route('users.index') }}">
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
      <th>Name</th>
      <th>Email</th>
      <th width="250px">Action</th>
    </tr>
    @foreach ($users as $user)
    <tr>
      <td>{{ $loop->iteration }}</td>
      <td>{{ $user->name }}</td>
      <td>{{ $user->email }}</td>
      <td>
        <form action="{{ route('users.destroy',$user->id) }}" method="POST">
          @csrf
          @method('DELETE')
          <a class="btn btn-info" href="{{ route('users.show',$user->id) }}">Show</a>
          <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">Edit</a>
          <button type="submit" class="btn btn-danger">Delete</button>
        </form>
      </td>
    </tr>
    @endforeach
  </table>

  {!! $users->appends(request()->query())->links() !!}
</div>
@endsection