<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // make permissions seed
        $permission = new Permission;
        $permission->name = 'Work period';
        $permission->slug = 'work-period';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'POS';
        $permission->slug = 'pos';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Order history';
        $permission->slug = 'order-history';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Customer';
        $permission->slug = 'customer';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Kitchen';
        $permission->slug = 'kitchen';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Report';
        $permission->slug = 'report';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Manage';
        $permission->slug = 'manage';
        $permission->save();


        $permission = new Permission;
        $permission->name = 'Delivery';
        $permission->slug = 'delivery';
        $permission->save();

        $permission = new Permission;
        $permission->name = 'Saas profile';
        $permission->slug = 'saas-profile';
        $permission->save();
        
        //ENDS HERE
    }
}