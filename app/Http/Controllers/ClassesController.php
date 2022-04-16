<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Classes;

class ClassesController extends Controller
{
    public function index()
    {
        $allClasses = Classes::All();

        return response()->json([
            'success' => true,
            'data' => $allClasses
        ]);
    }

    public function show($id)
    {
        $classes = Classes::find($id);

        if (!$classes) {
            return response()->json([
                'success' => false,
                'message' => 'Classes not found'
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $classes->toArray()
        ], 400);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'email' => 'required',
            'status' => 'required'
        ]);

        $classes = new Classes();
        $classes->title = $request->title;
        $classes->email = $request->email;
        $classes->status = $request->status;
        $classes->save();
        if ($classes)
            return response()->json([
                'success' => true,
                'data' => $classes->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Classes not added'
            ], 500);
    }

    public function updateData(Request $request)
    {
        $data = $request->all();
        $classes = Classes::find($data['id']);
        if (!$classes) {
            return response()->json([
                'success' => false,
                'message' => 'Classes not found'
            ], 400);
        }
        $classes->title = $data['title'];
        $classes->email = $data['email'];
        $classes->status = $data['status'];

        $updated = $classes->update();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Classes can not be updated'
            ], 500);
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();
        return 'alirazaaaza';
        dd('test2');

        dd($data);
        $classes = Classes::find($request->hiddentId);
        if (!$classes) {
            return response()->json([
                'success' => false,
                'message' => 'Classes not found'
            ], 400);
        }

        $updated = $classes->fill($request->all())->save();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Classes can not be updated'
            ], 500);
    }

    public function destroy($id)
    {
        $classes = Classes::find($id);

        if (!$classes) {
            return response()->json([
                'success' => false,
                'message' => 'Classes not found'
            ], 400);
        }

        if ($classes->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Classes can not be deleted'
            ], 500);
        }
    }
}
