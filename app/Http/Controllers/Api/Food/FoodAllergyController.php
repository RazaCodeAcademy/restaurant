<?php

namespace App\Http\Controllers\Api\Food;

use App\Http\Controllers\Controller;
use App\Models\FoodAllergy;
use App\Models\FoodItem;
use App\Models\FoodStockBranch;
use App\Models\FoodWithVariation;
use App\Models\FoodPurchaseHistory;
use App\Models\OpeningClosingStockFood;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class FoodAllergyController extends Controller
{
    //get all food allergy
    public function index()
    {
        $foodAllergies = FoodAllergy::all()->toArray();
        
        return [customPaginate($foodAllergies), $foodAllergies];
    }

    //save new food allergy
    public function store(Request $request)
    {
        $request->validate(
            [
            'name'   => ['required', 'unique:food_allergies']
        ],
            [
                'name.unique'                => 'A food allergy already exists with this name',
            ]
        );
        $foodAllergy = new FoodAllergy;
        $foodAllergy->name = $request->name;
        $foodAllergy->slug =  Str::random(3).'-'.time().'-'.Str::slug($request->name);
        $foodAllergy->save();
        //get all food allergy
        return $this->index();
    }

    //update food allergy
    public function update(Request $request)
    {
        $foodAllergy = FoodAllergy::where('slug', $request->editSlug)->first();
        if ($request->name != $foodAllergy->name) {
            $request->validate(
                [
                'name' => ['required', 'unique:food_allergies,name,' . $foodAllergy->name]
            ],
                [
                    'name.unique' => 'A food allergy already exists with this name'
                ]
            );
        }
        $foodAllergy->name = $request->name;
        $foodAllergy->slug =  Str::random(3).'-'.time().'-'.Str::slug($request->name);
        $foodAllergy->save();
        //get all food allergy
        return $this->index();
    }

    public function updateFoodAllergyStatus(Request $request){
        $foodAllergy = FoodAllergy::where('slug', $request->slug)->first();
        $foodAllergy->is_enabled = !$foodAllergy->is_enabled;
        $foodAllergy->save();
        return response()->json([
            'success' => true,
            'data' => $foodAllergy
        ]);
    }

    //delete food allergy
    public function destroy($slug)
    {
        $foodAllergy = FoodAllergy::where('slug', $slug)->first();
        $foodAllergy->delete();
        //get all food allergy
        return $this->index();
    }
}
