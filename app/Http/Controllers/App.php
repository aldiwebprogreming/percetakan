<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class App extends Controller
{
    function index(){

        return view('app/index');
    }
}
