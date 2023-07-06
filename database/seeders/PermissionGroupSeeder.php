<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\PermissionGroup;

class PermissionGroupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permission_group = new PermissionGroup;
        $permission_group->name = 'Admin';
        $permission_group->slug = 'admin';
        $permission_group->permission_id_array = '[1,2,3,4,5,6,7,9]';
        $permission_group->save();

        $permission_group = new PermissionGroup;
        $permission_group->name = 'POS Manager';
        $permission_group->slug = 'pos-manager';
        $permission_group->permission_id_array = '[1,2,3,4]';
        $permission_group->save();

        $permission_group = new PermissionGroup;
        $permission_group->name = 'Delivery Man';
        $permission_group->slug = 'deliverey-man';
        $permission_group->permission_id_array = '[8]';
        $permission_group->save();

        //ENDS HERE
    }
}