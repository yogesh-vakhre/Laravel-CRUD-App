<?php

namespace App\Http\Controllers;

use App\Models\Address;
use Illuminate\Http\Request;

class AddressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $address = Address::latest();
        if (request()->has('search')) {
            $address->where('city', 'Like', '%' . request()->input('search') . '%');
        }
        $address = $address->paginate(10);
        return view('address.index',compact('address'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('address.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'addMoreInputFields.*.address' => 'required',
            'addMoreInputFields.*.state' => 'required',
            'addMoreInputFields.*.city' => 'required',
            'addMoreInputFields.*.pincode' => 'required',
        ],
        [
            'addMoreInputFields.*.address.required' => 'The :attribute is required',
            'addMoreInputFields.*.state.required' => 'The :attribute is required',
            'addMoreInputFields.*.city.required' => 'The :attribute is required',
            'addMoreInputFields.*.pincode.required' => 'The :attribute is required',
        ]);
        foreach ($request->addMoreInputFields as $key => $value) {
            Address::create($value);
        }
                  
        //return $request->all() ;
        return back()->with('success', 'User address created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Address  $address
     * @return \Illuminate\Http\Response
     */
    public function show(Address $address)
    {
        return 1;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Address  $address
     * @return \Illuminate\Http\Response
     */
    public function edit(Address $address)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Address  $address
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Address $address)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Address  $address
     * @return \Illuminate\Http\Response
     */
    public function destroy(Address $address)
    {
        $delete=$address->delete();
        if($delete){
            return redirect()->route('address.index')
                        ->with('success','Address deleted successfully');
        } else {
            return redirect()->route('address.create')->with('error', 'Something went wrong!');
        }
    }
}
