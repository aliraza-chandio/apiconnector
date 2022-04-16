<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'reg_no',
        'full_name',
        'gender',
        'date_of_birth',
        'religion',
        'nationality',
        'migrated_from',
        'disability',
        'father_name',
        'father_cnic',
        'father_occupation',
        'father_education',
        'mother_name',
        'mother_cnic',
        'mother_occupation',
        'mother_education',
        'contact_number',
        'whatsapp_number',
        'address',
        'did_child_school',
        'monthly_income',
        'class_id',
        'donor_id',
        'student_profile',
        'rules_regulation',
        'birth_certificate',
        'father_cnic_image',
        'mother_cnic_image',
        'user_id',
    ];
}
