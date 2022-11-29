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
    <link rel="stylesheet" href="css/shop.css">
    <script type="text/javascript">    /*Dùng khi all còn đc chọn thì tất cả còn lại không đc chọn*/
        function setCheck(obj){
            var fries = document.getElementsByName('cidd');
            if((obj.id==='c0') && (fries[0].checked===true))
            {
                for(var i=1;i<fries.length;i++)
                    fries[i].checked=false;
            }else{
                for(var i=1;i<fries.length;i++) {
                    if (fries[i].checked == true) {
                        fries[0].checked = false;
                        break;
                    }
                }
            }
            document.getElementById('f1').submit();
        }
        function setCheck1(obj){
            var fries = document.getElementsByName('price');
            console.log(obj);
            if((obj.id==='g0') && (fries[0].checked===true))
            {
                for(var i=1;i<fries.length;i++)
                    fries[i].checked=false;
            }else {
                for (var i = 1; i < fries.length; i++) {
                    if (fries[i].checked == true) {
                        fries[0].checked = false;
                        break;
                    }
                }
            }
            document.getElementById('f2').submit();
        }
    </script>
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
                        <li class="active">Shop</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start product Frame -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-3 col-md-12">
            <!-- Trademark Start -->
<%--            <div class="border-bottom mb-4 pb-4">--%>
<%--                <h5 class="font-weight-semi-bold mb-4">Thương hiệu</h5>--%>
<%--                <div class="ct" >--%>
<%--                    <form id="f1" action="shop1">--%>
<%--                        <label><input type="checkbox" id="c0" name="cidd" ${chid[0]?"checked":""}--%>
<%--                               value="0" onclick="setCheck(this)"/>All--%>
<%--                        </label>--%>
<%--                        <c:forEach begin="0" end="${data.size()-1}" var="o">--%>
<%--                        <label><input type="checkbox" id="c1" name="cidd" ${data.get(o).getId()==cid?"checked":""}--%>
<%--                                   value="${data.get(o).getId()}" ${chid[o+1]?"checked":""} onclick="setCheck(this)"/>${data.get(o).getCategoryName()}--%>
<%--                        </label>--%>
<%--                        </c:forEach>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- Trademark End -->

            <!-- Price Start -->
            <div class="border-bottom mb-4 pb-4">
                <h5 class="font-weight-semi-bold mb-4">Giá bán</h5>
                <div class="ct">
                    <form id="f2" action="shop1">
                        <label><input type="checkbox" id="g0" name="price" ${pb[0]?"checked":""}
                               value="0" onclick="setCheck1(this)"/>All
                        </label>
                        <c:forEach begin="0" end="${5}" var="o">
                        <label><input type="checkbox" id="g1" name="price" ${pb[o+1]?"checked":""}
                                   value="${(o+1)}" onclick="setCheck1(this)"/>${pp[o]}
                        </label>
                        </c:forEach>
                    </form>
                </div>
            </div>
            <!-- Price End -->
        </div>

        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Tìm theo tên">
                                <div class="input-group-append">
                                    <span class="input-group-text bg-transparent text-primary">
                                        <i class="fa fa-search"></i>
                                    </span>
                                </div>
                            </div>
                        </form>
                        <div class="dropdown ml-4">
                            <button class="btn border dropdown-toggle" type="button" id="triggerId"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Xếp theo
                            </button>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                <a class="dropdown-item" href="shop1?">Giá cao đến thấp</a>
                                <a class="dropdown-item" href="shop1">Giá thấp đến cao</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <c:forEach items="${products}" var="o">
                                                <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                    <div class="single-product">
                                                        <div class="product-img">
                                                            <a href="product-details.html">
                                                                <img class="default-img" src="${o.image}">
                                                                <img class="hover-img" src="${o.image}">
                                                            </a>
                                                            <div class="button-head">
                                                                <div class="product-action-2">
                                                                    <a href="#">Thêm vào giỏ hàng</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h3><a href="product-details.html">${o.productName}</a></h3>
                                                            <div class="product-price">
                                                                <p class="vnd"><span>${o.price} </span> VNĐ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 pb-1">
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center mb-3">
                            <c:if test = "${indexPage>1}">
                                <li class="page-item">
                                    <a class="page-link" href="shop1?index=${indexPage-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:forEach begin="1" end="${numberPage}" var="o">
                                <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop1?index=${o} ">${o}</a></li>
                            </c:forEach>
                            <c:if test = "${indexPage<numberPage}">
                                <li class="page-item">
                                    <a class="page-link" href="shop1?index=${indexPage+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- End Product Frame -->

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
<script src="js/homepage.js"></script>
</body>
</html>