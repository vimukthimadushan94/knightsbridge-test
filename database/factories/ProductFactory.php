<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(Product::class, function (Faker $faker) {
    return [
        'seller_id'=>factory(App\Seller::class),
        'name' => $faker->name,
        'price' => $faker->randomFloat(2, 0, 10000),
        'stock' => $faker->numberBetween($min = 1, $max = 100),
        // 'image' => $faker->image('public/storage/images',640,480, null, false),
        'image' => url('/storage/image/').'/'.Str::random(10).".jpg",
        'description' => $faker->paragraph,
    ];
});
