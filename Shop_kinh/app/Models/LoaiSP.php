<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LoaiSP extends Model
{
    use SoftDeletes;

    protected $table = 'loai_s_p';
    protected $fillable = ['ten'];

    public function chitietsanpham() {
        return $this->hasMany('App\ChiTietSanPham','loai_sp_id','id	');
    }
}
