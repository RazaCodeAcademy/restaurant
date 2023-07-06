<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\OauthPersonalAccessClients;

class OauthPersonalAccessClientsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $client = new OauthPersonalAccessClients;
        $client->client_id = '1';
        $client->created_at = '2020-11-27 23:57:56';
        $client->updated_at = '2020-11-27 23:57:56';
        $client->save();
        //ENDS HERE
    }
}