<?php

namespace App\Http\Controllers\Api\Settings;

use App\Models\OnlinePayment;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OnlinePaymentController extends Controller
{
    public function store(Request $req) {
        // $req;
        $checkName = OnlinePayment::where('name',$req->name)->first();
        if($checkName) {
         
            $checkName->value = $req->value;
            $checkName->save();
            return "value added successfully";
        }
       else {
        $payment = new OnlinePayment;
        $payment->name = $req->name;
        $payment->value = $req->value;
        $payment->save();
        return "value added successfully";
       }
    }

    public function showPaypal() {
            $paypal = OnlinePayment::where('name','paypal')->first();
            return $paypal;
    }

}