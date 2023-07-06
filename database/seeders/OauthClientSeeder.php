<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\OauthClient;

class OauthClientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $client = new OauthClient;
        $client->user_id = null;
        $client->name = 'Food Khan Personal Access Client';
        $client->secret = 'pvUEMETyyUBJZd5eIvaaRUDSZfjFcHLVqk41sIrX';
        $client->provider = null;
        $client->redirect = 'http://localhost';
        $client->personal_access_client = '1';
        $client->password_client = '0';
        $client->revoked = '0';
        $client->created_at = '2020-11-27 23:57:56';
        $client->updated_at = '2020-11-27 23:57:56';
        $client->save();


        $client = new OauthClient;
        $client->user_id = null;
        $client->name = 'Food Khan Password Grant Client';
        $client->secret = 'WcQMCKHLkSi1UPgl1qrhKhDn4rATHCs4SKf8Tcv9';
        $client->provider = 'users';
        $client->redirect = 'http://localhost';
        $client->personal_access_client = '0';
        $client->password_client = '1';
        $client->revoked = '0';
        $client->created_at = '2020-11-27 23:57:56';
        $client->updated_at = '2020-11-27 23:57:56';
        $client->save();
        //ENDS HERE
    }
}