<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Database\Eloquent\SoftDeletes;
class NhaSanXuat extends Model
{
    use SoftDeletes,Sortable;

    protected $table = 'nha_san_xuat';
    protected $primaryKey='id';
    protected $fillable = ['ten'];

    
}
