
@extends('layout.main_admin', ['title' => 'Dashboard'])

@section('content')
    


<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.0/fullcalendar.print.css' rel='stylesheet' media='print' />


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper mt-3">
  <!-- Content Header (Page header) -->

  <div class="container">

    <div class="card">
      <div class="card-body">
        <h3 style="font-weight: bold;">Dashboard <i class="fas fa-home"></i></h3>
        <hr>
        <div class="alert alert-primary alert-dismissible fade show" role="alert">
          <strong>Hello</strong>, Selamat datang dia admin caberawit
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="row">



          <div class="col-sm-4">
            <div class="small-box bg-warning">
              <div class="inner">
                <h3 id="nof">334</h3>

                <p>Data Yasin</p>
              </div>
              <div class="icon">
                <i class="ion ion-user"></i>
              </div>
          
            </div>
          </div>

          <div class="col-sm-4">
            <div class="small-box bg-primary">
              <div class="inner">
                <h3 id="nof">34</h3>

                <p>Data kategori</p>
              </div>
              <div class="icon">
                <i class="ion ion-user"></i>
              </div>
           

            </div>
          </div>

          <div class="col-sm-4">
            <div class="small-box bg-info">
              <div class="inner">
                <h3 id="nof">4</h3>

                <p>Data Admin</p>
              </div>
              <div class="icon">
                <i class="ion ion-user"></i>
              </div>
            
            </div>
          </div>

        






        </div>
      </div>


      <!-- /.content -->
    </div>
  </div>
</div>

@endsection
