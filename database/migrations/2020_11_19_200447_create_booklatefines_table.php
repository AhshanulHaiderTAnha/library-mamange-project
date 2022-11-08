<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooklatefinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booklatefines', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('memberid');
            $table->string('mobile');
            $table->string('dept_name');
            $table->string('email');
            
            $table->string('book_name');
            $table->string('fines_ammount');
            $table->string('day_duration');
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
        Schema::dropIfExists('booklatefines');
    }
}
