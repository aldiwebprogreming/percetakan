<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Produk;
use Illuminate\Http\Request;

class Admin extends Controller
{
    //

    function  index(){
    
        return view('admin.index');
    }

   

    function data_kategori(){

        $kategori = Kategori::all();
        $kode = 'kode-'. rand(0, 100000);
        return view('admin.data_kategori', ['kategori' => $kategori, 'kode' => $kode]);
    }

    function tambah_kategori(Request $request){
        
        $input = Kategori::create([
            'kode' => $request->kode,
            'nama_kategori' => $request->nama_kategori,
        ]);

        return redirect('data_kategori');
    }

    function hapus_kategori(Request $request){
        
        $id = $request->id;
        $delete = Kategori::where('id', $id)->delete();
        return redirect('data_kategori');
        
    }

    function edit_kategori(Request $request){
        $id = $request->id;
        $edit = Kategori::where('id', $id)->update([
            'nama_kategori' => $request->nama_kategori
        ]);

        return redirect('data_kategori');
    }


    function data_produk(){
        $kode ='produk-'.rand(0, 10000);
        $produk = Produk::all();
        $kategori = Kategori::all();
        return view('admin.data_produk', ['produk' => $produk, 'kode' => $kode, 'kategori' => $kategori]);
    }

    function tambah_produk(Request $request){

        $image = $request->file('gambar');
        $image1 = $request->file('gambar1');
        $image2 = $request->file('gambar2');
        $image3 = $request->file('gambar2');

        $image->StoreAs('public/img/produk', $image->hashName());
        $image1->StoreAs('public/img/produk', $image1->hashName());
        $image2->StoreAs('public/img/produk', $image2->hashName());
        $image3->StoreAs('public/img/produk', $image3->hashName());
        
        $data = [
            'kode' => $request->kode,
            'nama' => $request->nama,
            'kategori' => $request->kategori,
            'gambar' => $image->hashName(),
            'gambar_all' => $image1->hashName(). " ". $image2->hashName(). " ".  $image3->hashName(),
            'keterangan' => $request->keterangan
        ];

        Produk::create($data);
        return redirect('data_produk');
        
    }

    function hapus_produk(Request $request){
        $id = $request->id;
        $delete = Produk::where('id', $id)->delete();
        return redirect('data_produk');
    }


}
