<?php

namespace Database\Seeders;

use Str;
use Illuminate\Database\Seeder;
use App\Models\User;
use Carbon\Carbon;
class UserAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $createUser = new User;
      
            $createUser->name ='admin';
            $createUser->slug = Str::random(3) . '-' . time() . '-' . Str::slug('admin');
            $createUser->email = 'admin@mail.com';
            $createUser->user_type = 'superAdmin';
            $createUser->is_active = 1;
            $createUser->is_banned = 0;
            $createUser->permission_group_id = 1;
            $createUser->password = '$2y$10$GpZAaqd8ycTTHJ/ALEr6WeTpVEvdIR2OBkQqO9SHRszHRCtHMPM5K';
            $createUser->created_at = Carbon::now();
            $createUser->updated_at = Carbon::now();
            $createUser->save();
      
    }
}