<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->string('gender');
            $table->date('date_of_birth');
            $table->string('religion');
            $table->string('nationality');
            $table->string('migrated_from');
            $table->string('disability');
            $table->string('father_name');
            $table->string('fcnic');
            $table->string('father_occupation');
            $table->string('father_education');
            $table->string('mother_name');
            $table->string('mcnic');
            $table->string('mother_occupation');
            $table->string('mother_education');
            $table->string('phone');
            $table->string('whatsapp');
            $table->string('address');
            $table->string('did_child');
            $table->string('child_last_class');
            $table->string('monthly_income');
            $table->unsignedBigInteger('class_id');
            $table->unsignedBigInteger('donor_id');
            $table->string('student_profile');
            $table->string('rules_regulation');
            $table->string('birth_certificate');
            $table->string('fcnic_image');
            $table->string('mcnic_image');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
            $table->foreign('class_id')->references('id')->on('classes');
            $table->foreign('donor_id')->references('id')->on('donors');
            $table->foreign('user_id')->references('id')->on('users');
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
