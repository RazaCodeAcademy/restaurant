<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Currency;

class CurrencySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $currency = new Currency;
        $currency->name = 'US Dollar';
        $currency->symbol = '$';
        $currency->rate = '1';
        $currency->alignment = 'left';
        $currency->is_default = '1';
        $currency->code = 'usd';
        $currency->save();
        //ENDS HERE
    }
}