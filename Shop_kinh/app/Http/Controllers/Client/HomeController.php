<?php

namespace App\Http\Controllers\Client;
use App\Http\Controllers\Controller;
use App\Models\ChiTietSP;
use App\Models\SanPham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        
    	return view('Font-end.page.home.home');
    }
    
    public function about(){
    	return view('Font-end.page.About');
    }

}
