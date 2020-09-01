<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableSpec extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('screen');
            $table->string('cam_front');
            $table->string('cam_rear');
            $table->string('ram');
            $table->string('storage');
            $table->string('cpu');
            $table->string('gpu');
            $table->string('pin');
            $table->string('os');
            $table->string('sim');
            $table->integer('product_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('specs');
    }
}
