<?php

namespace App\Http\Controllers;
use App\Models\Restaurant;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;



class RestaurantsController extends Controller
{

    public function index()
    {
        $restaurants = Restaurant::orderBy('name')->get();
        return response()->json($restaurants, 200);

    }


    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'description' => 'required',
            'grade' => 'required',
            'localization' => 'required',
            'website' => 'required',
            'hours' => 'required',
            'phone_number' => 'required',

    ]);

    if ($validator->fails()) {
    
        return response()->json([ 'message ' => 'Vérifiez les donnees.'], 400);
    }
    
    else {

    $restaurant = new Restaurant;
    
    $restaurant->name = $request->name;
    $restaurant->description = $request->description;
    $restaurant->grade = $request->grade;
    $restaurant->localization = $request->localization;
    $restaurant->website = $request->website;
    $restaurant->hours = $request->hours;
    $restaurant->phone_number = $request->phone_number;

    $restaurant->save();

    return response()->json(['message' => 'Création du restaurant  !'], 201); }
    }


    public function show($id){

        $restaurant=Restaurant::find($id);

        if ($restaurant){
            return response()->json($restaurant);

        }
        else {
            return response()->json(['message' => 'Restaurant inexistant.'], 400);

        }
        
        
    }

    public function delete($id){
        

        $restaurant=Restaurant::find($id);

        if ($restaurant) {
            $restaurant->delete();
        return response()->json([$restaurant], 200);
        }

         else {
            return response()->json([ 'message ' => 'Vérifiez que le restaurant existe déjà.'], 400);
        }
        

    }

    public function update(Request $request, $id)
    {
        
        if (Restaurant::find($id)){
            
        

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'description' => 'required',
            'grade' => 'required',
            'localization' => 'required',
            'website' => 'required',
            'hours' => 'required',
            'phone_number' => 'required'
        ]);
        
        
        
        if ($validator->fails()) {
    
            return response()->json([ 'message ' => 'Vérifiez les donnees.'], 400);
        }
        
        else {

            $restaurant = Restaurant::where('id', $id)
            ->update([
                'name' => $request->name,
                'description' => $request->description,
                'grade' => $request->grade,
                'localization' => $request->localization,
                'website' => $request->website,
                'hours' => $request->hours,
                'phone_number' => $request->phone_number,
            ]);

            return response()->json([ 'message ' => 'Modification du restaurant.'], 200);
        }
    }

    else {
         
        return response()->json([ 'message ' => 'Restaurant inexistant.'], 400);

    }
    }
    
}