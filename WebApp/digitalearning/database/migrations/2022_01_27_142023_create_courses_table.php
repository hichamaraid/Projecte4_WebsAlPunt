<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();

            //creacio de cursos
            $table->integer('category_id')->nullable();
            $table->string('title');
            $table->string('sub_title')->nullable();
            $table->longText('description');
            $table->longText('about_instructor')->nullable();
            $table->string('playlist_url');
            $table->string('tags')->nullable();
            $table->string('photo')->nullable(); 

            //estat
            $table->integer('view_count')->default(0);
            $table->integer('subscriber_count')->default(0); 

            $table-> softDeletes();
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
        Schema::dropIfExists('courses');
    }
}
