<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooklistsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booklists', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('book_code');
            $table->string('book_name');
            $table->string('book_description');
            $table->string('cover_image');
            $table->string('book_quantity');
            $table->string('author_name');
            $table->string('publisher_name');
            $table->string('genres_name');
            $table->string('book_publish_year');
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
        Schema::dropIfExists('booklists');
    }
}
