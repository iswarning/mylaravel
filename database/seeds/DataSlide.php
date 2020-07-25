<?php

use Illuminate\Database\Seeder;

class DataSlide extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       	DB::table('slide')->insert([
       		'name' => 'slide show 1',
       		'src' => "image/slideshow1.png"
       	]);
       	DB::table('slide')->insert([
       		'name' => 'slide show 2',
       		'src' => "image/slideshow2.png"
       	]);
       	DB::table('slide')->insert([
       		'name' => 'slide show 3',
       		'src' => "image/slideshow3.png"
       	]);
       	DB::table('slide')->insert([
       		'name' => 'slide show 4',
       		'src' => "image/slideshow4.png"
       	]);
       	DB::table('slide')->insert([
       		'name' => 'slide show 5',
       		'src' => "image/slideshow5.png"
       	]);
       	DB::table('slide')->insert([
       		'name' => 'slide show 6',
       		'src' => "image/slideshow6.png"
       	]);
    }
}
