<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Donor;

class DonorController extends Controller
{
    public function index()
    {
        $donors = Donor::All();
        return response()->json([
            'success' => true,
            'data' => $donors
        ]);
    }

    public function show($id)
    {
        $donor = Donor::find($id);

        if (!$donor) {
            return response()->json([
                'success' => false,
                'message' => 'Donor not found '
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $donor->toArray()
        ], 400);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'name' => 'required',
            'mobile' => 'required',
            'email' => 'required',
            'status' => 'required'
        ]);
        $donor = new Donor();
        $donor->name = $request->name;
        $donor->mobile = $request->mobile;
        $donor->email = $request->email;
        $donor->status = $request->status;
        $donor->save();
        if ($donor)
            return response()->json([
                'success' => true,
                'data' => $donor->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Donor not added'
            ], 500);
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();
        $donor = Donor::find($data['hiddenId']);
        if (!$donor) {
            return response()->json([
                'success' => false,
                'message' => 'Donor not found'
            ], 400);
        }
        $donor->name = $data['name'];
        $donor->email = $data['email'];
        $donor->mobile = $data['mobile'];
        $donor->status = $data['status'];
        $donor->update();
        return response()->json([
            'success' => true,
            'data' => $donor
        ]);
    }

    public function destroy($id)
    {
        $donor = Donor::find($id);

        if (!$donor) {
            return response()->json([
                'success' => false,
                'message' => 'Donor not found'
            ], 400);
        }

        if ($donor->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Donor can not be deleted'
            ], 500);
        }
    }
}
