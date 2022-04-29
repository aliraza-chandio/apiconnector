<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use Auth;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::All();

        return response()->json([
            'success' => true,
            'data' => $students
        ]);
    }

    public function show($id)
    {
        $student = Student::find($id);
        // dd($student);
        if (!$student) {
            return response()->json([
                'success' => false,
                'message' => 'Student not found12345678'
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $student->toArray()
        ], 400);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'full_name' => 'required',
            'gender' => 'required',
            'date_of_birth' => 'required',
            'religion' => 'required',
            'nationality' => 'required',
            'disability' => 'required',
            'father_name' => 'required',
            'fcnic' => 'required',
            'father_occupation' => 'required',
            'father_education' => 'required',
            'mother_name' => 'required',
            'mcnic' => 'required',
            'mother_occupation' => 'required',
            'mother_education' => 'required',
            'phone' => 'required',
            'whatsapp' => 'required',
            'address' => 'required',
            'monthly_income' => 'required',
        ]);
        $student = new Student();
        $student->full_name = $request->full_name;
        $student->gender = $request->gender;
        $student->date_of_birth = $request->date_of_birth;
        $student->religion = $request->religion;
        $student->nationality = $request->nationality;
        $student->disability = $request->disability;
        $student->father_name = $request->father_name;
        $student->fcnic = $request->fcnic;
        $student->father_occupation = $request->father_occupation;
        $student->father_education = $request->father_education;
        $student->mother_name = $request->mother_name;
        $student->mcnic = $request->mcnic;
        $student->mother_occupation = $request->mother_occupation;
        $student->mother_education = $request->mother_education;
        $student->phone = $request->phone;
        $student->whatsapp = $request->whatsapp;
        $student->address = $request->address;
        $student->did_child = $request->did_child;
        $student->migrated_from = $request->migrated_from;
        $student->age = $request->age;
        $student->monthly_income = $request->monthly_income;
        $student->user_id = Auth::user()->user_id;
        $student->save();
        // dd($student);
        $studentData = Student::find($student->id);
        $studentData->student_profile = env('APPLICATION_URL') . '/students/' . $student->id . '/' . $request->student_profile;
        $studentData->birth_certificate = env('APPLICATION_URL') . '/students/' . $student->id . '/' . $request->birth_certificate;
        $studentData->fcnic_image = env('APPLICATION_URL') . '/students/' . $student->id . '/' . $request->fcnic_image;
        $studentData->mcnic_image = env('APPLICATION_URL') . '/students/' . $student->id . '/' . $request->mcnic_image;
        $studentData->update();
        if ($student)
            return response()->json([
                'success' => true,
                'data' => $student->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Student not added'
            ], 500);
    }

    public function update(Request $request, $id)
    {
        $student = Student::find($id);

        if (!$student) {
            return response()->json([
                'success' => false,
                'message' => 'Student not found'
            ], 400);
        }

        $updated = $student->fill($request->all())->save();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Student can not be updated'
            ], 500);
    }

    public function destroy(Request $request, $id)
    {
        $student = Student::find($request->id);

        if (!$student) {
            return response()->json([
                'success' => false,
                'message' => 'Student not found123'
            ], 400);
        }

        if ($student->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Student can not be deleted'
            ], 500);
        }
    }
}
