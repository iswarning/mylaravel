<?php

use Illuminate\Database\Seeder;
use App\Introduction;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(DataSlide::class);

    }
}
