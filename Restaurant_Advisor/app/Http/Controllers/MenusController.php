<?php

namespace App\Http\Controllers;
use App\Models\Menu;
use App\Models\Restaurant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class MenusController extends Controller
{
    
    public function index()
    {
        $menus = Menu::all();
        return $menus;

    }
///////////////////////////////////


    public function store(Request $request, $id)
    {

        $restaurant=Restaurant::find($id);

        if ($restaurant){


        
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'description' => 'required',
            'price' => 'required',
            
    ]);

    if ($validator->fails()) {
    
        return response()->json([ 'message ' => 'Vérifiez les donnees.'], 400);
    }
    
    else {

    $menu = new Menu;
    $menu->name = $request->name;
    $menu->description = $request->description;
    $menu->price = $request->price;
    $menu->restaurant_id = $id;
    
    $menu->save();

return response()->json(['message' => 'Création du menu !'], 201); }
}

else {
    
    return response()->json([ 'message ' => 'Restaurant inexistant.'], 400);
}
    }


    ///////////////////


    public function show($id)
    {
        
       $menus=Restaurant::find($id)->menus;
       

        return response()->json([$menus], 200); 
    
    }




    public function update(Request $request, $id, $idd)
    {
        
        $menuexiste=Menu::find($idd);

        if ($menuexiste){
        
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'description' => 'required',
            'price' => 'required',
        ]);
        
        
        
        if ($validator->fails()) {
    
            return response()->json([ 'message ' => 'Vérifiez les donnees.'], 400);
        }
        
        else {

            $menu = Menu::where('id', $idd)
            ->update([
                'name' => $request->name,
                'description' => $request->description,
                'price' => $request->price,
            ]);

            return response()->json([ 'message ' => 'Modification du menu.'], 200);
        }
    
    }

    else {
        
        return response()->json([ 'message ' => 'Menu inexistant.'], 400);
    }
    }


    public function delete($id, $idd){
        

        $menu=Menu::find($idd);

        if ($menu) {
            $menu->delete();
            return response()->json([ 'message ' => 'Suppression du restaurant.'], 200);
        }

         else {
            return response()->json([ 'message ' => 'Vérifiez que le menu existe déjà.'], 400);
        }
        

    }

}