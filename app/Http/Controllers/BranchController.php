<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Branch;

class BranchController extends Controller
{
    public function index()
    {
        $allBranch = Branch::All();
        return response()->json([
            'success' => true,
            'data' => $allBranch
        ]);
    }

    public function show($id)
    {
        $branch = Branch::find($id);

        if (!$branch) {
            return response()->json([
                'success' => false,
                'message' => 'Branch not found'
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $branch->toArray()
        ], 400);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'status' => 'required'
        ]);

        $branches = new Branch();
        $branches->name = $request->name;
        $branches->phone = $request->phone;
        $branches->address = $request->address;
        $branches->status = $request->status;
        $branches->save();
        if ($branches)
            return response()->json([
                'success' => true,
                'data' => $branches->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Branch not added'
            ], 500);
    }

    public function updateData(Request $request)
    {
        $data = $request->all();
        $branches = Branch::find($data['id']);
        if (!$branches) {
            return response()->json([
                'success' => false,
                'message' => 'Branch not found'
            ], 400);
        }
        $branches->name = $data['name'];
        $branches->phone = $data['phone'];
        $branches->address = $data['address'];
        $branches->status = $data['status'];

        $updated = $branches->update();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Branch can not be updated'
            ], 500);
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();
        return 'alirazaaaza';
        dd('test2');

        dd($data);
        $branches = Branch::find($request->hiddentId);
        if (!$branches) {
            return response()->json([
                'success' => false,
                'message' => 'Branch not found'
            ], 400);
        }

        $updated = $branches->fill($request->all())->save();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Branch can not be updated'
            ], 500);
    }

    public function destroy($id)
    {
        $branches = Branch::find($id);

        if (!$branches) {
            return response()->json([
                'success' => false,
                'message' => 'Branch not found'
            ], 400);
        }

        if ($branches->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Branch can not be deleted'
            ], 500);
        }
    }
}
