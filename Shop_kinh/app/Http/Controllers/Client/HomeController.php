<?php

namespace App\Http\Controllers\Client;
use App\Http\Controllers\Controller;
use App\Models\ChiTietSP;
use App\Models\SanPham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        
        $sanpham = ChiTietSP::where('tinh_trang',1)->get();
        $sanphammoi = ChiTietSP::where('new',1)->where('tinh_trang','1')->get();
        $sanphamsale = ChiTietSP::where('giam_gia','<>',0)->where('tinh_trang',1)->get();

    	return view('Font-end.page.home.home',compact('sanpham','sanphamsale','sanphammoi'));
    }
    
    public function about(){
    	return view('Font-end.page.About');
    }

}
