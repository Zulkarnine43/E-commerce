<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHomeAddsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_adds', function (Blueprint $table) {
            $table->increments('id');
            $table->string('product_name');
            $table->string('crop_type');
            $table->string('product_quantity');
            $table->string('product_price');
            $table->string('product_description');
            $table->string('long_description');
            $table->string('product_image');
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
        Schema::dropIfExists('home_adds');
    }
}
