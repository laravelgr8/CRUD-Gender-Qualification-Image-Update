<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=Faker::create();
        foreach(range(1,10) as $value)
        {
            DB::table('students')->insert([
                "name"=>$faker->name(),
                "email"=>$faker->unique->safeEmail(),
                "password"=>Hash::make($faker->password),
                "mobile"=>$faker->phoneNumber,
                "gender"=>$faker->randomElement(['Male','Female'])
            ]);
        }
    }
}
