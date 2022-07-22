<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            //
            'title' => $this->faker->sentence,
            'content' => $this->faker->text,
            'category_id' => $this->faker->numberBetween(8,10),
            'user_id' => '7',
            'slug' => $this->faker->slug,
            'created_at' => now(),
            'updated_at' => now(),
            'description' => $this->faker->text,
            'highlight' => $this->faker->boolean,
            'image' => $this->faker->imageUrl(640, 480),
        ];
    }
}
