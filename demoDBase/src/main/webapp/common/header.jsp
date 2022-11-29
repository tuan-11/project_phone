<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="header shop">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">
                        <ul class="list-main">
                            <li><i class="ti-headphone-alt"></i> 1800 9999</li>
                            <li><i class="ti-email"></i> ute@hcmute.edu.vn</li>
                        </ul>
                    </div>
                    <!--/ End Top Left -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->

    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="home" class="logo-text">UTESHOP</a>
                    </div>
                    <!--/ End Logo -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <form action="shop1" method="post">
                                <input name="search" placeholder="Bạn tìm gì....." type="text">
                                <button class="btnn" onclick="this.form.submit()">
                                    <i class="ti-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar jcontent-space-between" style="width:280px">
                        <!-- Search Form -->
                        <div class="sinlge-bar flex">
                            <i class="fa fa-user-circle-o" style="font-size:24px;"></i>
                            <a href="#" class="single-content">Tài Khoản</a>
                        </div>
                        <div class="sinlge-bar shopping flex">
                            <a class="fa fa-shopping-cart" style="font-size:24px;color:#f6931d;"></i> <span class="total-count">2</span></a>
                            <a href="#" class="single-content">Giỏ Hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="all-category">
                            <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>DANH MỤC SẢN PHẨM</h3>
                            <ul class="main-category">
                                <c:forEach items="${data}" var="o">
                                    <li><a href="shop1?cid=${o.categoryId}">Điện thoại ${o.categoryName}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li><a href="home">Home</a></li>
                                            <li><a href="shop1">Shop</a></li>
                                            <li><a href="shopDetail">Shop Detail</a></li>
                                            <li><a href="#">Pages<i class="ti-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="cart.html">Cart</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>

