<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $setting = new Setting;
        $setting->name = 'type_background';
        $setting->value = '#ffffff';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_logo';
        $setting->value = '/images/logo/1639302362-khadyo-logopng.png';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_color';
        $setting->value = '#ffffff';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_footer';
        $setting->value = 'Khadyo || All rights reserved';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_vat';
        $setting->value = '10';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'print_kitchen_bill';
        $setting->value = '1';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'play_sound';
        $setting->value = '0';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'siteName';
        $setting->value = 'Khadyo Restaurant';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'address';
        $setting->value = 'Uttara, Dhaka';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'phnNo';
        $setting->value = '12345';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'favicon';
        $setting->value = '/images/favicon/1639302362-khadyo-logopng.png';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_clock';
        $setting->value = '#de222a';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_install';
        $setting->value = 'NO';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'timezone';
        $setting->value = 'UTC';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_print_footer';
        $setting->value = 'Thanks';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'type_print_heading';
        $setting->value = 'Hello';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'table_waiter';
        $setting->value = '0';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'pos_screen';
        $setting->value = '1';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'sDiscount';
        $setting->value = 'flat';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'vat_system';
        $setting->value = 'igst';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'cgst';
        $setting->value = '2';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'sgst';
        $setting->value = '2';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'tax';
        $setting->value = '2';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'hero_sub_1';
        $setting->value = 'Welcome here';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'hero_heading';
        $setting->value = 'Enjoy our food';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'hero_sub_2';
        $setting->value = 'We are at your service';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'razorpay_key';
        $setting->value = 'rzp_test_xFsiMyNMoRtykv';
        $setting->save();

        $setting = new Setting;
        $setting->name = 'razorpay_secret';
        $setting->value = 'AEeprxQPmsSWQpjENMtfIOgz';
        $setting->save();
        //ENDS HERE
    }
}