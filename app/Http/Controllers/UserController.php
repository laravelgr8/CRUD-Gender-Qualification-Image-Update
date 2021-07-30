<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
    function index()
    {
        
        return view('home');
    }

    function insert(Request $request)
    {
        $validate=$request->validate([
            "name"=>'required',
            "email"=>'required',
            "password"=>'required',
            "mobile"=>'required',
            "gender"=>'required',
            "qualification"=>'required',
            "pic"=>'required'
        ]);
        if($request->hasfile('pic'))
        {
            $file=$request->file('pic');
            $extension=$file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('image/',$filename);
        }
        $data=DB::table('students')->insert([
            "name"=>$request->name,
            "email"=>$request->email,
            "mobile"=>$request->mobile,
            "password"=>Hash::Make($request->password),
            "gender"=>$request->gender,
            "qualification"=>implode(",",$request->qualification),
            "pic"=>$filename
        ]);
        return redirect(route('index'))->with('msg','Insert Success');
    }

    function show()
    {
        $data=DB::table('students')->get();
        // echo json_encode($data);
        return $data;
    }

    function edit(Request $request)
    {
        $id=$request->id;
        $data=DB::table('students')->find($id);
        return $data;
    }

    function update(Request $request)
    {
        $id=$request->id;
        if($request->hasfile('pic'))
        {
            $file=$request->file('pic');
            $extension=$file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('image/',$filename);
        }
        else
        {
            $filename=$request->old_pic;
        }
        $data=DB::table('students')->where('id',$id)->update([
            "name"=>$request->name,
            "email"=>$request->email,
            "mobile"=>$request->mobile,
            "gender"=>$request->gender,
            "qualification"=>implode(",",$request->qualification),
            "pic"=>$filename
        ]);

    }





}
