<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NhaSanXuat extends Model
{
    use SoftDeletes, Sortable;

    protected $table = 'nha_san_xuat';
    protected $fillable = ['ten'];

    public function chitietsanpham() {
        return $this->belongsTo('App\ChiTietSanPham','nha_sx_id','id');
    }
}
