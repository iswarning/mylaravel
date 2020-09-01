<?php

use Illuminate\Database\Seeder;
use App\Spec;
use App\Product;
use App\Introduction;
class DataSpecs extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::create([
            'TenSanPham' =>     'iPhone 7 Plus 32GB',
            'MaLoai' =>          1,
            'Gia' =>             8990000,
            'MoTa' =>           'iPhone 7 Plus dường như là sản phẩm được Apple chăm chút để vượt xa iPhone 7, trở thành sản phẩm rất đáng để nâng cấp so với iPhone 6s Plus khi được nâng cấp thêm camera kép cùng chức năng chụp chân dung xoá phông cực "hot". Không chỉ vậy, nâng cấp đáng giá khác như tốc độ xử lý nhanh hơn, chống nước, bụi, loa ngoài sống động... Tất cả đã tạo nên một sản phẩm hàng đầu tuyệt vời.',
            'HinhAnh' =>        'image/7plus_d_1.jpg',
            'HinhCT1' =>        'image/7plus_d_2.jpg',
            'HinhCT2' =>        'image/7plus_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        10
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone 8 Plus 64GB',
            'MaLoai' =>          1,
            'Gia' =>             13990000,
            'MoTa' =>           'Apple bất ngờ ra mắt bộ đôi iPhone 8 và iPhone 8 Plus tạo ra cơn bão mới càn quét hết các bảng xếp hạng siêu phẩm. Như thường lệ, iPhone 8 Plus từ thiết kế cho tới tính năng đều mang đến cho người dùng những trải nghiệm thú vị tuyệt vời không thể bỏ lỡ.',
            'HinhAnh' =>        'image/8plus_d_1.jpg',
            'HinhCT1' =>        'image/8plus_d_2.jpg',
            'HinhCT2' =>        'image/8plus_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        5
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone Xs Max 256GB',
            'MaLoai' =>          1,
            'Gia' =>             25990000,
            'MoTa' =>           'iPhone Xs Max 256GB có thể nói là chiếc smartphone có loa ngoài tốt bậc nhất hiện nay. Cụm loa kép stereo cho chất lượng khó tin về cả độ lớn lẫn độ chi tiết. Loa ngoài trên thực tế rất quan trọng khi nó thường xuyên được người dùng sử dụng, iPhone Xs Max mang đến những phút giây giải trí tuyệt vời với màn hình lớn đỉnh cao và loa ngoài cực chất.',
            'HinhAnh' =>        'image/xs_d_1.jpg',
            'HinhCT1' =>        'image/xs_d_2.jpg',
            'HinhCT2' =>        'image/xs_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        25
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone SE (2020) 64GB',
            'MaLoai' =>          1,
            'Gia' =>             12490000,
            'MoTa' =>           'Một chiếc iPhone nhỏ gọn mang trên mình bộ vi xử lý mạnh mẽ hàng đầu, iPhone SE 2020 với mức giá hấp dẫn chưa từng thấy sẽ là sự lựa chọn phù hợp dành cho tất cả người dùng.',
            'HinhAnh' =>        'image/se2020_d_1.jpg',
            'HinhCT1' =>        'image/se2020_d_2.jpg',
            'HinhCT2' =>        'image/se2020_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        66
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone 11 64GB',
            'MaLoai' =>          1,
            'Gia' =>             17990000,
            'MoTa' =>           'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.',
            'HinhAnh' =>        'image/11_d_1.jpg',
            'HinhCT1' =>        'image/11_d_2.jpg',
            'HinhCT2' =>        'image/11_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        105
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone 11 Pro 64GB',
            'MaLoai' =>          1,
            'Gia' =>             24990000,
            'MoTa' =>           'Hoàn thiện từ khung thép không gỉ chắc chắn và hai mặt kính cường lực bóng bẩy, iPhone 11 Pro 64GB thật sự nổi bật giữa đám đông. Chiếc iPhone nhỏ gọn, cho cảm giác cầm nắm hoàn hảo nhưng vẫn có màn hình đủ lớn để trải nghiệm tốt mọi thứ. 4 phiên bản màu sắc sang trọng, mang đến nhiều lựa chọn cho người dùng. 4 màu sắc iPhone 11 Pro bao gồm Vàng, Xám không gian, Bạc và đặc biệt là màu mới Xanh Midnight đầy cuốn hút.',
            'HinhAnh' =>        'image/11pro_d_1.jpg',
            'HinhCT1' =>        'image/11pro_d_2.jpg',
            'HinhCT2' =>        'image/11pro_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        51
        ]);

        Product::create([
            'TenSanPham' =>     'iPhone 11 Pro Max 64GB',
            'MaLoai' =>          1,
            'Gia' =>             27990000,
            'MoTa' =>           'Được trang bị bộ vi xử lý Apple A13 Bionic, iPhone 11 Pro Max tự tin thể hiện đẳng cấp hiệu năng “Pro”. So với thế hệ trước, Apple A13 Bionic nhanh hơn 20% và tiêu thụ năng lượng ít hơn tới 40% cả về CPU lẫn GPU. iPhone 11 Pro Max mạnh mẽ vượt trội khi đặt cạnh bất cứ đối thủ nào trên thị trường hiện nay. Mọi tác vụ kể cả những tựa game nặng nhất cũng đều được thể hiện trơn tru, mượt mà trên iPhone 11 Pro Max 64GB.',
            'HinhAnh' =>        'image/11promax_d_1.jpg',
            'HinhCT1' =>        'image/11promax_d_2.jpg',
            'HinhCT2' =>        'image/11promax_d_3.jpg',
            'HangSanXuat' =>    'Apple',
            'Instock' =>        66
        ]);
    }
}
