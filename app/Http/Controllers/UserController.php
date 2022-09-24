<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::latest();
        if (request()->has('search')) {
            $users->where('name', 'Like', '%' . request()->input('search') . '%');
        }
        $users = $users->paginate(10);
        return view('users.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {  
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users|max:50',
            'gender' => 'required',
            'mobile_number' => 'required',
            'dob' => 'required',
            'age' => 'required',
            ]);
        $user = User::create($validatedData);
        if($user){
            return redirect()->route('users.index')->with('success', 'User created successfully.');
        }else{
            return redirect()->route('users.index')->with('error', 'User not created successfully.'); 
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('users.show',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('users.edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $validatedData = $request->validate([
        'name' => 'required',
        'email' => 'required|email|unique:users,email,'.$user->id,
        'gender' => 'required',
        'mobile_number' => 'required',
        'dob' => 'required',
        'age' => 'required',
        ]);
        $update=$user->update($request->all());
        if($update){
         return redirect()->route('users.index')->with('success', 'User updated successfully.');
        }else{
            return redirect()->route('users.index')->with('error', 'User not updated successfully.'); 
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $delete=$user->delete();
        if($delete){
            return redirect()->route('users.index')
                        ->with('success','User deleted successfully');
        } else {
            return redirect()->route('users.create')->with('error', 'Something went wrong!');
        }
    }
}