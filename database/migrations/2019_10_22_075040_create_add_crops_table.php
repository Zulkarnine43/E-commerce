<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAddCropsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('add_crops', function (Blueprint $table) {
            $table->increments('id');
            $table->string('email');
            $table->string('product_name');
            $table->string('crop_type');
            $table->string('product_quantity');
            $table->string('product_price');
            $table->string('product_description');
            $table->string('long_description');
            $table->date('last_date_bidding');
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
        Schema::dropIfExists('add_crops');
    }
}
