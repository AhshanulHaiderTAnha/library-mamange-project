<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookscirculationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookscirculation', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('book_name');
            $table->string('users_name');
            $table->string('issue_date');
            $table->string('return_date');
            $table->string('re_submit_date');
            $table->string('note');
            $table->string('status');
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
        Schema::dropIfExists('bookscirculation');
    }
}
