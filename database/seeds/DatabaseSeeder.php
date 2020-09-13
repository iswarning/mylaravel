<?php

use Illuminate\Database\Seeder;
use App\Introduction;
use App\Product;
use App\Spec;
use App\Slide;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        Introduction::create([
            'title' => 'Đánh giá chi tiết Samsung Galaxy A70',
            'content' => 'Chiếc điện thoại dành cho những điều lớn: màn hình lớn, viên pin dung lượng cao; 3 camera độ phân giải “siêu khủng”, Samsung A70 mở ra kỷ nguyên mới cho riêng bạn.',
            'image' => 'image/68_i_1.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Tận hưởng cuộc sống cùng 3 camera',
            'content' => 'Samsung Galaxy A70 mang trên mình tới 3 camera sau, bao gồm camera chính 32MP, camera góc siêu rộng 8MP và camera đo chiều sâu 5MP. Bạn có thể lưu lại mọi khoảnh khắc trong cuộc sống bằng những bức hình chi tiết và sống động. Cảm biến camera chính độ phân giải lên tới 32MP, khẩu độ lớn f/1.7 lý tưởng cho chụp ảnh thiếu sáng. Trong khi đó camera đo chiều sâu sẽ hỗ trợ chụp ảnh xóa phông Live Focus, điều chỉnh độ mờ hậu cảnh theo ý muốn cả trước và sau khi chụp.',
            'image' => 'image/68_i_2.jpg',
            'product_id' => 68,
        ]);
        Introduction::create([
            'title' => 'Mỗi bức ảnh là một kiệt tác',
            'content' => 'Tính năng tối ưu hóa cảnh của Galaxy A70 sẽ nhận diện được bạn đang chụp đối tượng nào, sau đó tự động tinh chỉnh để có được màu sắc, ánh sáng, độ tương phản phù hợp với đối tượng đó nhất. Dù là bất cứ hoàn cảnh nào thì mỗi bức ảnh của bạn đều trở nên sinh động và thực sự đáng nhớ.',
            'image' => 'image/68_i_3.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Quay và chụp ở góc siêu rộng',
            'content' => 'Hãy thử chụp ảnh và quay video bằng camera góc siêu rộng 123 độ trên Galaxy A70, bạn sẽ thấy vô cùng thú vị. Nhiều người và cảnh vật hơn trong khung hình sẽ tạo nên những thước phim hay bức hình độc đáo.',
            'image' => 'image/68_i_4.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Video chuyển động siêu chậm',
            'content' => 'Chế độ quay video chuyển động siêu chậm Super Slow-mo mang đến thêm sự vui vẻ cho các đoạn video hành động của bạn. Những hình ảnh mà mắt thường không kịp nhìn thấy sẽ được thể hiện lại hấp dẫn ở hiệu ứng chuyển động siêu chậm.',
            'image' => 'image/68_i_5.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Thời lượng pin đáng kinh ngạc, công nghệ sạc siêu nhanh',
            'content' => 'Sở hữu viên pin dung lượng khó tin 4500 mAh, Samsung Galaxy A70 mang đến thời lượng pin đáng kinh ngạc. Bạn có thể sử dụng thoải mái trong vòng 2 ngày mới cần phải sạc pin. Quá trình sạc cũng diễn ra nhanh hơn bao giờ hết nhờ công nghệ sạc siêu nhanh 25W. Galaxy A70 luôn sẵn sàng hành động cùng bạn.',
            'image' => 'image/68_i_6.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Màn hình vô cực 6,7 inch',
            'content' => 'Chiếc điện thoại màn hình lớn hơn bao giờ hết, Samsung Galaxy A70 có màn hình lớn tới 6,7 inch, cho bạn tận hưởng các nội dung một cách ấn tượng. Công nghệ hình ảnh Super AMOLED, màn hình vô cực Infinity-U và độ phân giải Full HD+ sắc nét đủ để mang lại những phút giây giải trí bất tận. Một rạp chiếu phim di động hay một cỗ máy chơi game lý tưởng, Galaxy A70 đều đáp ứng tốt với màn hình quá tuyệt vời.',
            'image' => 'image/68_i_7.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Tốc độ nhanh hàng đầu',
            'content' => 'Hiệu năng hàng đầu của điện thoại Galaxy A70 cho phép bạn làm mọi thứ ở tốc độ cao. Bộ vi xử lý siêu việt Snapdragon 675 không chỉ thao tác mượt mà ở tác vụ thông thường mà còn chơi được những game nặng nhất hiện nay. Dung lượng RAM 6GB là con số lý tưởng để hoạt động đa nhiệm trên hệ điều hành Android Pie mới nhất và giao diện Samsung One UI hiện đại. Trong khi đó 128GB bộ nhớ trong là quá thoải mái để bạn cài đặt ứng dụng và lưu trữ dữ liệu.',
            'image' => 'image/68_i_8.jpg',
            'product_id' => 68,
        ]);

        Introduction::create([
            'title' => 'Cảm biến vân tay trong màn hình',
            'content' => 'Với cảm biến vân tay tích hợp ngay trong màn hình, phương thức bảo mật đơn giản của bạn đã lên một tầm cao mới. Chỉ một cú chạm nhẹ vào màn hình, máy sẽ mở khóa theo cách an toàn và tiện lợi nhất.',
            'image' => 'image/68_i_9.jpg',
            'product_id' => 68,
        ]);

    }
}
