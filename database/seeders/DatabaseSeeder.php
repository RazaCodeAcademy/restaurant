<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(CurrencySeeder::class);
        $this->call(DeliveryMenCheckSeeder::class);
        $this->call(ShowManageStockSeeder::class);
        $this->call(LangSeeder::class);
        $this->call(PermissionGroupSeeder::class);
        $this->call(PermissionSeeder::class);
        $this->call(SettingSeeder::class);
        $this->call(UserAdminSeeder::class);
        $this->call(OauthPersonalAccessClientsSeeder::class);
        $this->call(OauthClientSeeder::class);
    }
}