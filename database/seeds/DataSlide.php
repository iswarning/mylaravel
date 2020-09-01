<?php

use Illuminate\Database\Seeder;
use App\Introduction;
use App\Slide;
class DataSlide extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 1; $i <= 4; $i++){
            Slide::create([
                'name' =>       'Slide Detail',
                'src' =>        'image/11promax_s_'.$i.'.jpg',
                'product_id' =>        45
            ]);
        }


    }
}
