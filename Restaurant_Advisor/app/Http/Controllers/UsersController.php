<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Hash;


class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::orderBy('name')->get();
        return response()->json($users, 200);
    }


    public function register(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'username' => 'required',
            'name' => 'required',
            'firstname' => 'required',
            'age' => 'required',
            'email' => 'required',
            'password' => 'required',

    ]);

    if ($validator->fails()) {

        
        return response()->json([ 'message ' => 'Vérifiez les donnees.'], 400);
    }
    
    else {
    $user = new User;
    
    $user->username = $request->username;
    $user->name = $request->name;
    $user->firstname = $request->firstname;
    $user->age = $request->age;
    $user->email = $request->email;
    $user->password = Hash::make($request->password);


    $user->save();

    return response()->json(['message' => "Création de l'utilisateur !"], 201); }
    }


    public function show($id){

        $user=User::findOrFail($id);

        return response()->json($user);

        
    }


    public function auth(Request $request){


        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);
        

        $user = User::where('email', '=', $request->email)->first();

        if ($user){
            
            if (Hash::check($request->password, $user->password)){
                return response()->json([ 'message ' => 'Vous êtes connectés.'], 200);
            }
            else {
                return response()->json([ 'message ' => 'Vérifiez les informations.'], 400);
            }
            
        }

        
        else {
            return response()->json([ 'message ' => 'Vérifiez les informations.'], 400);

        }
    }
}
