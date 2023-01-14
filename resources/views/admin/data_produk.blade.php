
@extends('layout.main_admin', ['title' => 'Data Kategori'])

@section('content')
    
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.0/fullcalendar.print.css' rel='stylesheet' media='print' />


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper mt-3">
  <!-- Content Header (Page header) -->

  <div class="container">

    <div class="card">
      <div class="card-body">
        <h3 style="font-weight: bold;">Data Produk <i class="fas fa-home"></i></h3>
        <hr>
        <div class="row">
            <button class="btn btn-primary mb-3"  data-toggle="modal" data-target="#exampleModal">Tambah produk <i class="fas fa-plus"></i></button>
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">Kode</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Kategori</th>
                    <th scope="col">Gambar</th>
                    <th scope="col">Opsi</th>
                  </tr>
                </thead>
                <tbody>
                    <?php $no = 1 ?>
                    @foreach ($produk as $item)
                  <tr>
                    <th scope="row">{{ $no++ }}</th>
                    <td>{{ $item->kode }}</td>
                    <td>{{ $item->nama }}</td>
                    <td>{{ $item->kategori }}</td>
                    <td>
                      <img src="{{ Storage::url('public/img/produk/'). $item->gambar}}" class="img-fluid" alt="Responsive image" style="height: 100px;">
                    </td>
                    <td>
                        <button class="btn btn-danger" data-toggle="modal" data-target="#exampleModalhapus{{ $item->id }}">Hapus</button>
                        <button class="btn btn-info"  data-toggle="modal" data-target="#exampleModaledit{{ $item->id }}">Edit</button>
                    </td>

                     <!-- Modal hapus -->
                    <div class="modal fade" id="exampleModalhapus{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Hapus Produk</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                <form action="{{ url('admin/hapus_produk') }}" method="post">
                                    @csrf
                                    @method('delete')
                                    <h4>Apakah anda ingin menghapus data ini ?</h4>
                                    <div class="form-group">
                                        <input type="hidden" readonly="" class="form-control" name="id" value="{{ $item->id }}">
                                    </div>
                                
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                            </div>
                        </form>
                        </div>
                        </div>
                    </div>

                    <!-- Modal edit -->
                    <div class="modal fade" id="exampleModaledit{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Kategori</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                <form action="{{ url('admin/edit_kategori') }}" method="post">
                                    @csrf
                                    @method('put')
                                    <input type="hidden" readonly="" class="form-control" name="id" value="{{ $item->id }}">
                                    <div class="form-group">
                                        <label for="kode">Kode</label>
                                        <input type="text" readonly="" class="form-control" name="kode" value="{{ $item->kode }}">
                                    </div>
                                    <div class="form-group">
                                        <label for="kode">Nama Kategori</label>
                                        <input type="text"  class="form-control" name="nama_kategori" value="{{ $item->nama_kategori }}">
                                    </div>
                                
                                
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                            </div>
                        </form>
                        </div>
                        </div>
                    </div>
                    @endforeach
                  </tr>
                </tbody>
              </table>
        </div>
      </div>
  

      <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Tambah Produk</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('admin/tambah_produk') }}" method="post" enctype="multipart/form-data">
                @csrf
                @method('post')

                <div class="form-group">
                    <label for="kode">Kode</label>
                    <input type="text" readonly="" class="form-control" name="kode" value="{{ $kode }}">
                </div>
                <div class="form-group">
                    <label for="kode">Nama Produk</label>
                    <input type="text"  class="form-control" name="nama">
                </div>

                <div class="form-group">
                    <label for="kode">Kategori</label>
                    <select name="kategori" id="" class="form-control">
                        <option>--Pilih Kategori --</option>
                        @foreach ($kategori as $item)
                                <option value="{{ $item->nama_kategori }}">{{ $item->nama_kategori }}</option>
                        @endforeach
                        
                    </select>
                </div>

                <div class="form-group">
                    <label for="kode">Gambar Utama</label>
                    <input type="file" class="form-control" name="gambar">
                </div>

                <div class="form-group">
                  <label for="kode">Gambar 1</label>
                  <input type="file" class="form-control" name="gambar1">
              </div>

              
              <div class="form-group">
                <label for="kode">Gambar 2</label>
                <input type="file" class="form-control" name="gambar2">
            </div>

            
            <div class="form-group">
              <label for="kode">Gambar 3</label>
              <input type="file" class="form-control" name="gambar3">
          </div>

                <div class="form-group">
                    <label for="kode">Keterangan</label>
                    <textarea name="keterangan" id="" cols="30" rows="10" class="form-control"></textarea>
                </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </form>
      </div>
    </div>
  </div>


   


      <!-- /.content -->
    </div>
  </div>
</div>

@endsection
