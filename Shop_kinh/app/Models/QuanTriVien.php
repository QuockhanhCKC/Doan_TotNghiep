<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuanTriVien extends Model
{
    use SoftDeletes, Sortable;

    protected $table = 'quan_tri_vien';
    protected $fillable = [
        'ten_tai_khoan',
        'mat_khau',
        'ten',
        'email',
        'sdt',
        'vai_tro_id',
        'bi_khoa'
    ];
    protected $hidden = ['mat_khau'];

    public function getPasswordAttribute()
    {
        return $this->mat_khau; 
    }

    public function vai_tro()
    {
        return $this->hasOne(VaiTro::class, 'id', 'vai_tro_id');
    }

    public function biKhoaSortable($query, $direction) {
        return $query->orderByRaw("if (bi_khoa = 1, 'Bị khóa', 'Không khóa') {$direction}");
    }
}
