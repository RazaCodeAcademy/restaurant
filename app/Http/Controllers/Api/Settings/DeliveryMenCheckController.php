<?php

namespace App\Http\Controllers\Api\Settings;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DeliveryMenCheck;

class DeliveryMenCheckController extends Controller
{
    public function index(Request $req)
    {
        // return $req;
        $deliveryMenCount =  DeliveryMenCheck::count();

        if ($deliveryMenCount > 0) {
            $deliveryMen = DeliveryMenCheck::where('key', 'is_checked')->first();

            // return $req->checked;
            if ($req->checked == 'true') {
                $deliveryMen->value = 1;
                $deliveryMen->save();
            } else {
                $deliveryMen->value = 0;
                $deliveryMen->save();
            }
            // $deliveryMen->save();
            return $deliveryMen;
        } else {
            $newDeliveryMen =  new DeliveryMenCheck();
            $newDeliveryMen->key = 'is_checked';
            if ($req->checked == 'true') {
                $newDeliveryMen->value = 1;
                $newDeliveryMen->save();
            } else {
                $newDeliveryMen->value = 0;
                $newDeliveryMen->save();
                return $newDeliveryMen;
            }
        }
    }

    public  function getCheckData()
    {
        $getCheckData = DeliveryMenCheck::all();

        return $getCheckData;
    }
}