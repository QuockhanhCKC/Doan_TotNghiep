<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chi_tiet_sp', function (Blueprint $table) {
            $table->id();
            $table->foreignId('san_pham_id');
            $table->foreignId('loai_sp_id');
            $table->foreignId('nha_sx_id');
            $table->string('ten_sp', 255);
            $table->string('gia', 50);
            $table->string('kich_co', 100)->nullable();
            $table->string('chat_lieu', 100)->nullable();
            $table->string('mau_sac', 100)->nullable();
            $table->string('gioi_tinh')->nullable();
            $table->integer('so_luong')->default(0);
            $table->string('giam_gia',10)->default(0);
            $table->longText('hinh_anh')->nullable();
            $table->longText('mo_ta')->nullable();
            $table->integer('new')->default(0);
            $table->boolean('tinh_trang')->default(0);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chi_tiet_sp');
    }
};
