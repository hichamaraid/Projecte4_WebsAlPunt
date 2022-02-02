<?php

namespace Database\Factories;

use App\Models\course;
use Illuminate\Database\Eloquent\Factories\Factory;

class courseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = course::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => $this->faker->randomDigitNotNull,
        'category_id' => $this->faker->randomDigitNotNull,
        'title' => $this->faker->word,
        'description' => $this->faker->text,
        'about_instructor' => $this->faker->text,
        'discount_price' => $this->faker->randomDigitNotNull,
        'actual_price' => $this->faker->randomDigitNotNull,
        'playlist_url' => $this->faker->word,
        'view_count' => $this->faker->randomDigitNotNull,
        'subscriber_count' => $this->faker->randomDigitNotNull,
        'status' => $this->faker->randomDigitNotNull,
        'photo' => $this->faker->word,
        'deleted_at' => $this->faker->date('Y-m-d H:i:s'),
        'created_at' => $this->faker->date('Y-m-d H:i:s'),
        'updated_at' => $this->faker->date('Y-m-d H:i:s')
        ];
    }
}
