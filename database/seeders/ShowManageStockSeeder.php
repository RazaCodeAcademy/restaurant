<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ShowManageStock;
class ShowManageStockSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $delivery = new ShowManageStock;
        $delivery->key = 'is_checked';
        $delivery->value = '1';
        $delivery->save();
    }
}