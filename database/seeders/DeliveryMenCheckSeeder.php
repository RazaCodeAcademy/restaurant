<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\DeliveryMenCheck;

class DeliveryMenCheckSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $delivery = new DeliveryMenCheck;
        $delivery->key = 'is_checked';
        $delivery->value = '0';
        $delivery->save();
        //ENDS HERE
    }
}
