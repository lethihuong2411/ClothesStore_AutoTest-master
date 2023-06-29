@extends('layouts.master_home')

@section('title')
    Giới thiệu - Fashion Store
@endsection

@section('css')
    <!-- Blog Style CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('/home/css/blog-styles.css')}}" media="all" />
@endsection

@section('home')

<div class="em-wrapper-main">
    <div class="container container-main">
        <div class="em-inner-main">
            <div class="em-wrapper-area02"></div>
            <div class="em-main-container em-col2-left-layout">
                <div class="row"> 
                    <div class="col-sm-24 em-col-main">
                        <div class="em_post-item">                           
                            <div class="" style="text-align : justify; padding: 10px 10px; line-height : 30px;">
                                <p><strong>VỀ CHÚNG TÔI</strong></p>

                                <p>Cửa hàng quần áo - Fashion Store là nơi chuyên cung cấp các thực phẩm chức năng cho mọi lứa tuổi.</p>

                                <p>Với đội ngũ Nhân viên tư vấn chuyên môn tốtchúng tôi mong muốn mang lại những sản phẩm tốt, nguồn gốc rõ ràng; những tư vấn hữu ích nhất cho các bạn.</p>

                                <p>Đội ngũ giao hàng chuyên nghiệp, giao hàng nhanh chóng cho bạn những trải nghiệm tốt nhất.</p>

                                <p>Mọi vấn đề thắc mắc, xin liên hệ số điện thoại hotline: 0987 654 321 hoặc gửi thư tới địa chỉ: huonglt@gmail.com</p>
                            </div>
                        </div>
                    </div><!-- /.em-col-main -->
                </div>
            </div><!-- /.em-main-container -->
        </div>
    </div>
</div>

@endsection
