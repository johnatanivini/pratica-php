<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->id();
            $table->string('email', 150)->unique('idx_usuario_email')->nullable(false);
            $table->string('userName', 150)->unique('idx_usuario_user_name')->nullable(false);
            $table->string('name', 150)->nullable(false);
            $table->string('zipCode', 30)->nullable(false);
            $table->string('password', 150)->nullable(false);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
}
