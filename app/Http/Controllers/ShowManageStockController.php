<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ShowManageStock;

class ShowManageStockController extends Controller
{
    public function index(Request $req)
    {
        $showManageStockCount =  ShowManageStock::count();

        if ($showManageStockCount > 0) {
           $showManageStock = ShowManageStock::where('key', 'is_checked')->first();

            if ($req->checked == 'true') {
               $showManageStock->value = 1;
               $showManageStock->save();
            } else {
               $showManageStock->value = 0;
               $showManageStock->save();
            }
            return$showManageStock;
        } else {
           $newShowManageStock =  new ShowManageStock();
           $newShowManageStock->key = 'is_checked';
            if ($req->checked == 'true') {
               $newShowManageStock->value = 1;
               $newShowManageStock->save();
            } else {
               $newShowManageStock->value = 0;
               $newShowManageStock->save();
                return$newShowManageStock;
            }
        }
    }

    public  function getCheckData()
    {
        $getCheckData = ShowManageStock::all();

        return $getCheckData;
    }
}