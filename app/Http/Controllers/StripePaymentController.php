<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Session;
use Stripe;
class StripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
        return view('stripe');
    }
    
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        try {
            $paymentIntent = Stripe\PaymentIntent::create ([
                "amount" => 100 * $request->amount,
                "currency" => $request->currency,
                "payment_method" => $request->stripeToken,
                "description" => "Payment has been recieved from $request->name" 
            ]);

            $paymentIntent->confirm();
            // Payment is successful
            return [
                "success" => true,
                "message" => "Payment confirmed successfully!"
            ];
          } catch (\Stripe\Exception\ApiErrorException $e) {
            // Handle error
            return [
                "success" => false,
                "message" => $e->getMessage()
            ];
          }
      
        Session::flash('success', 'Payment successful!');
              
        
    }
}
