<?php

namespace App\Http\Controllers\Client;
use App\Http\Controllers\Controller;
use App\Models\ChiTietSP;
use App\Models\NhaSanXuat;
use App\Models\SanPham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(){
        

        $sanpham = DB::table('san_pham') ->get();
        $sanphammoi = NhaSanXuat::all();
        $sanphamsale = ChiTietSP::where('giam_gia','<>',0)->where('tinh_trang',1)->get();
        //dd($sanpham,$sanphammoi);
    	return view('Font-end.page.home.home',compact('sanpham','sanphamsale','sanphammoi'));
    }
    
    public function about(){
    	return view('Font-end.page.About');
    }

}
