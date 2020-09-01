<?php

use Illuminate\Database\Seeder;
use App\Introduction;
use App\Spec;
class DataIntroduction extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Spec::create([
            'screen' =>         '5.5", FHD, IPS LCD, 1080 x 1920 Pixel',
            'cam_front' =>      '12.0 MP',
            'cam_rear' =>       '5.0 MP',
            'ram' =>            '2 GB',
            'storage' =>        '32 GB',
            'cpu' =>            'Apple A9',
            'gpu' =>            'PowerVR GT7600',
            'pin' =>            '2750 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, Nano SIM',
            'product_id' =>     38
        ]);

        Spec::create([
            'screen' =>         '5.5", FHD, IPS LCD, 1080 x 1920 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP',
            'cam_rear' =>       '7.0 MP',
            'ram' =>            '3 GB',
            'storage' =>        '32 GB',
            'cpu' =>            'A10 Fusion',
            'gpu' =>            'PowerVR Series7XT Plus',
            'pin' =>            '2900 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, Nano SIM',
            'product_id' =>     39
        ]);

        Spec::create([
            'screen' =>         '5.5", Retina HD, IPS LCD, 1080 x 1920 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP',
            'cam_rear' =>       '7.0 MP',
            'ram' =>            '3 GB',
            'storage' =>        '64 GB',
            'cpu' =>            'A11 Bionic',
            'gpu' =>            'Apple GPU',
            'pin' =>            '2691 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, Nano SIM',
            'product_id' =>     40
        ]);

        Spec::create([
            'screen' =>         '6.5", Super Retina HD, Super AMOLED, 1242 x 2688 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP',
            'cam_rear' =>       '7.0 MPP',
            'ram' =>            '4 GB',
            'storage' =>        '256 GB',
            'cpu' =>            'A12 Bionic',
            'gpu' =>            'Apple GPU 4 nhân',
            'pin' =>            '3174 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, 1 eSIM, 1 Nano SIM',
            'product_id' =>     41
        ]);

        Spec::create([
            'screen' =>         '4.7", Retina HD, IPS LCD, 750 x 1334 Pixel',
            'cam_front' =>      '12.0 MP',
            'cam_rear' =>       '7.0 MP',
            'ram' =>            '3 GB',
            'storage' =>        '64 GB',
            'cpu' =>            'A13 Bionic',
            'gpu' =>            'Apple GPU 4 nhân',
            'pin' =>            'Đang cập nhật',
            'os' =>             'iOS 14',
            'sim' =>            '2, 1 eSIM, 1 Nano SIM',
            'product_id' =>     42
        ]);

        Spec::create([
            'screen' =>         '6.1", Liquid Retina HD, IPS LCD, 828 x 1792 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP',
            'cam_rear' =>       '12.0 MP',
            'ram' =>            '4 GB',
            'storage' =>        '64 GB',
            'cpu' =>            'A13 Bionic',
            'gpu' =>            'Apple GPU 4 nhân',
            'pin' =>            '3110 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, 1 eSIM, 1 Nano SIM',
            'product_id' =>     43
        ]);

        Spec::create([
            'screen' =>         '5.8", Super Retina XDR, Super AMOLED, 1125 x 2436 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP + 12.0 MP',
            'cam_rear' =>       '12.0 MP',
            'ram' =>            '4 GB',
            'storage' =>        '64 GB',
            'cpu' =>            'A13 Bionic',
            'gpu' =>            'Apple GPU 4 nhân',
            'pin' =>            '3046 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, 1 eSIM, 1 Nano SIM',
            'product_id' =>     44
        ]);

        Spec::create([
            'screen' =>         '6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel',
            'cam_front' =>      '12.0 MP + 12.0 MP + 12.0 MP',
            'cam_rear' =>       '12.0 MP',
            'ram' =>            '4 GB',
            'storage' =>        '64 GB',
            'cpu' =>            'A13 Bionic',
            'gpu' =>            'Apple GPU 4 nhân',
            'pin' =>            '3969 mAh',
            'os' =>             'iOS 13',
            'sim' =>            '1, 1 eSIM, 1 Nano SIM',
            'product_id' =>     45
        ]);
    }
}
