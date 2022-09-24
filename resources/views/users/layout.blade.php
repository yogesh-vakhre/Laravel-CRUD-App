<!DOCTYPE html>
<html>

<head>
  <title>Laravel User CRUD Application </title>
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

  <style>
  .error {
    color:#dc3545;
  }
  </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Laravel app</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="{{ url('/')}}">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="{{route('users.index')}}">Users</a>
      <a class="nav-item nav-link" href="{{route('address.index')}}">Address</a>
    </div>
  </div>
</nav>
  <div class="container">
    @if(session('status'))
    <div class="alert alert-success">
      {{ session('status') }}
    </div>
    @endif
    @yield('content')
  </div>

</body>

</html>