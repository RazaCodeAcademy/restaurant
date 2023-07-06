<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Lang;

class LangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $lang = new Lang;
        $lang->code = 'en';
        $lang->name = 'English';
        $lang->is_default = '1';
        $lang->image = '/images/flags/default.png';
        $lang->save();
        //ENDS HERE
    }
}
