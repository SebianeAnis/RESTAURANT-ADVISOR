<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Restaurant>
 */
class RestaurantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'description' => $this->faker->paragraph(),
            'grade' => $this->faker->randomNumber(1,100),
            'localization' => $this->faker->address(),
            'phone_number' => $this->faker->phoneNumber(),
            'website' => $this->faker->url(),
            'hours' => $this->faker->randomNumber(),
            'created_at' => now()
            //
        ];
    }
}
