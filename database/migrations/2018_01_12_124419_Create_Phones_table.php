<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePhonesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Phones', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('brand_id')->unsigned();
            $table->foreign('brand_id')->references('id')->on('brands')->onDelete('cascade');
            $table->string('Phone_name');
            $table->string('Colour');
            $table->string('Screen_size');
            $table->string('Screen_resolution');
            $table->string('operating_system');
            $table->string('CPU');
            $table->string('RAM');
            $table->string('ROM');
            $table->string('SIM');
            $table->string('MicroSD');
            $table->string('Front_camera');
            $table->string('Main_camera');
            $table->string('Communication_agreement');
            $table->string('Link_web');
            $table->string('specification');
            $table->string('Phone_weight');
            $table->string('battery');
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
            
      

            
             /*$table->integer('teacher_id')->unsigned();
            $table->foreign('teacher_id')
                  ->references('id')
                  ->on('teachers')
                  ->onDelete('cascade');*/
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Phones');
    }
}
