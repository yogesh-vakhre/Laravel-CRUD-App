<?php

namespace Database\Factories;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            "mobile_number" => $this->faker->randomNumber($nbDigits = NULL),
            "age" => $this->faker->numberBetween(20, 50),
            "gender" => $this->faker->randomElement(["male", "female"]),
            "dob" => $this->faker->dateTimeBetween('1990-01-01', '2012-12-31')->format('Y/m/d'),
        ];
    }
}
