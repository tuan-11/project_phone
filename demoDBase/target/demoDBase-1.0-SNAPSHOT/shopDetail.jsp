<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>UTEshop</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon-32x32.png">
    <!-- Web Font -->
    <link
            href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
            rel="stylesheet">
    <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
    <!-- StyleSheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/shop.css">
</head>

<body class="js">
<!-- Header -->
<jsp:include page="common/header.jsp"></jsp:include>
<!--/ End Header -->

<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="home">Home<i class="ti-arrow-right"></i></a></li>
                        <li class="active">Shop Detail</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Shop Detail Start -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="chitietSanpham" style="margin-bottom: 100px">
                    <h1>Điện thoại Xiaomi Redmi Note 5</h1>
                    <div class="rowdetail group">
                        <div class="picture">
                            <img src="https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg" onclick="opencertain()">
                        </div>
                        <div class="price_sale">
                            <div class="area_price"><strong>5.690.000₫</strong></div>
                            <div class="area_promo">
                                <strong>khuyến mãi</strong>
                                <div class="promo">
                                    <i class="fas fa-check-circle"></i>
                                    <div id="detailPromo">Khách hàng sẽ được thử máy miễn phí tại cửa hàng. Có thể đổi trả lỗi trong vòng 2 tháng.</div>
                                </div>
                            </div>
                            <div class="policy">
                                <div>
                                    <i class="fas fa-box-open"></i>
                                    <p>Trong hộp có: Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim, Ốp lưng </p>
                                </div>
                                <div>
                                    <i class="fas fa-medal"></i>
                                    <p>Bảo hành chính hãng 12 tháng.</p>
                                </div>
                                <div class="last">
                                    <i class="fas fa-sync"></i>
                                    <p>1 đổi 1 trong 1 tháng nếu lỗi, đổi sản phẩm tại nhà trong 1 ngày.</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-4 pt-2">
                                <div class="input-group quantity mr-3" style="width: 130px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-primary btn-minus">
                                            <i class="fa fa-minus" style="color: #fff"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-primary btn-plus">
                                            <i class="fa fa-plus" style="color: #fff"></i>
                                        </button>
                                    </div>
                                </div>
                                <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1" style="color: #fff"></i> Add To Cart</button>
                            </div>
                        </div>
                        <div class="info_product">
                            <h2>Thông số kỹ thuật</h2>
                            <ul class="info"><li>
                                <p>Màn hình</p>
                                <div>IPS LCD, 5.99', Full HD+</div>
                            </li><li>
                                <p>Hệ điều hành</p>
                                <div>Android 8.1 (Oreo)</div>
                            </li><li>
                                <p>Camara sau</p>
                                <div>12 MP và 5 MP (2 camera)</div>
                            </li><li>
                                <p>Camara trước</p>
                                <div>13 MP</div>
                            </li><li>
                                <p>CPU</p>
                                <div>Qualcomm Snapdragon 636 8 nhân</div>
                            </li><li>
                                <p>RAM</p>
                                <div>4 GB</div>
                            </li><li>
                                <p>Bộ nhớ trong</p>
                                <div>64 GB</div>
                            </li><li>
                                <p>Thẻ nhớ</p>
                                <div>MicroSD, hỗ trợ tối đa 128 GB</div>
                            </li><li>
                                <p>Dung lượng pin</p>
                                <div>4000 mAh, có sạc nhanh</div>
                            </li></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End-->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="tab-pane fade show active" id="tab-pane-1">
                    <h4 class="mb-3">Product Description</h4>
                    <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea.</p>
                    <p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum.</p>
                </div>
            </div>
        </div>
    </div>

<!-- Start Shop Services Area -->
<section class="shop-services section home">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-rocket"></i>
                    <h4>Miễn phí vận chuyển</h4>
                    <p>Đơn hàng trên 2.000.000đ</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-reload"></i>
                    <h4>Trả lại miễn phí</h4>
                    <p>Trong vòng 30 ngày trở lại</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-lock"></i>
                    <h4>Thanh toán chắc chắn</h4>
                    <p>Thanh toán an toàn 100%</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-tag"></i>
                    <h4>Giá tốt nhất</h4>
                    <p>Giá đảm bảo</p>
                </div>
                <!-- End Single Service -->
            </div>
        </div>
    </div>
</section>
<!-- End Shop Services Area -->

<!-- Start Shop Newsletter  -->
<section class="shop-newsletter section">
    <div class="container">
        <div class="inner-top">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-12">
                    <!-- Start Newsletter Inner -->
                    <div class="inner">
                        <h4>Đăng kí nhận bảng tin UTESHOP</h4>
                        <p> Đăng ký nhận bản tin của chúng tôi và nhận được <span>10%</span> cho lần mua hàng đầu
                            tiên của bạn</p>
                        <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                            <input name="EMAIL" placeholder="Email của bạn..." required="" type="email">
                            <button class="btn">Đăng kí</button>
                        </form>
                    </div>
                    <!-- End Newsletter Inner -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Shop Newsletter -->

<!-- Start Footer Area -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.0.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="js/colors.js"></script>
<!-- Slicknav JS -->
<script src="js/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="js/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="js/magnific-popup.js"></script>
<!-- Waypoints JS -->
<script src="js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="js/nicesellect.js"></script>
<!-- Flex Slider JS -->
<script src="js/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="js/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="js/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="js/easing.js"></script>
<!-- Active JS -->
<script src="js/active.js"></script>
</body>
</html>