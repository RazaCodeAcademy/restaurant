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
    
        $paymentIntent = Stripe\PaymentIntent::create ([
                "amount" => 100 * $request->amount,
                "currency" => $request->currency,
                "payment_method" => $request->stripeToken,
                "description" => "Payment has been recieved from $request->name" 
        ]);

        try {
            $paymentIntent->confirm();
            // Payment is successful
            echo "Payment confirmed successfully!";
            return [
                "success" => true
            ];
          } catch (\Stripe\Exception\ApiErrorException $e) {
            // Handle error
            echo "Error: " . $e->getMessage();
            return [
                "success" => false
            ];
          }
      
        Session::flash('success', 'Payment successful!');
              
        
    }
}
