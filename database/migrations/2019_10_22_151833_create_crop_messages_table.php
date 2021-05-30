<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCropMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crop_messages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('crop_id');
            $table->string('product_name');
             $table->string('farmer_email');
            $table->string('cust_id');
            $table->string('name');
            $table->string('email');
            $table->string('mobile');
            $table->string('message');
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
        Schema::dropIfExists('crop_messages');
    }
}
