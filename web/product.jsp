<%-- 
    Document   : product
    Created on : Jan 10, 2021, 3:14:51 PM
    Author     : thant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
			  integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/1acc75252a.js" crossorigin="anonymous"></script>
        <title>Prodcut</title><style>
			* {
				box-sizing: border-box;
			}

			html {
				font-family: "Cairo", sans-serif !important;
				-webkit-font-smoothing: antialiased;
			}

			ul {
				list-style: none;
			}

			li {
				float: left;

			}

			.note {
				margin-left: 10px;
				border-left: 1px solid #7e7e7e;
				padding-left: 10px;
			}

			.header_top {
				background: #f5f5f5;
			}

			.header_top_right__auth {
				vertical-align: middle;
			}

			.nav-item {
				font-weight: bold;
				font-size: 20px;
				margin-right: 50px;
				width: 100px;
			}

			.nav-item:last-child {
				margin-left: 100px;
				margin-right: 120px;
				font-size: medium;
				color: #46aed9;
			}

			a.fa-shopping-bag {
				position: relative;
				font-size: 2em;
				cursor: pointer;
			}

			span.fa-circle {
				position: absolute;
				font-size: 0.6em;
				top: -2px;
				color: rgb(138, 138, 138);
				right: -12px;
			}

			span.num {
				position: absolute;
				font-size: 0.4em;
				top: 2px;
				color: #fff;
				right: -6px;
			}

			.active,
			.nav-link:hover {
				color: #7dc129 !important;
			}

			.categories_all {
				background: #7dc129;
				position: relative;
				padding: 10px 25px 10px 40px;
				cursor: pointer;
			}

			/*			.dropdown-menu {
							display: block;
							visibility: hidden;
							opacity: 0;
							transform: translateY(100px);
							transition: .5s ease all;
						}
			
						.dropdown-menu.show {
							display: block;
							visibility: visible;
							opacity: 1;
							transform: translateY(0px);
							transition: .5s ease all;
						}
			
						.dropdown-item:hover {
							background-color: #7e7e7e;
							color: #fff;
						}*/

			.categories_all {
				border: 1px solid #fff;
				border-radius: 5px;
				font-size: 20px;
				font-weight: bold;
			}

			.categories ul {
				border: 1px solid #ebebeb;
				padding-left: 40px;
				padding-top: 10px;
				padding-bottom: 12px;
				border-radius: 5px;
			}

			.items-sub-left {
				display: block;
				font-size: larger;
				text-decoration: none;
				width: 100%;
				padding-bottom: 10px;
			}

			.items-sub-left>a {
				text-decoration: none;
				color: #000;
			}

			.items-sub-left>a:hover {
				text-decoration: underline;
			}

			.hero__search {
				overflow: hidden;
				margin-bottom: 30px;
				margin-left: 100px;
			}

			.hero__search__form {
				width: 610px;
				height: 50px;
				border: 1px solid #ebebeb;
				position: relative;
				float: left;
			}

			.hero__search__form form .hero__search__categories {
				width: 30%;
				float: left;
				font-size: 16px;
				color: #1c1c1c;
				font-weight: 700;
				padding-left: 18px;
				padding-top: 11px;
				position: relative;
			}

			.hero__search__form form .hero__search__categories:after {
				position: absolute;
				right: 0;
				top: 14px;
				height: 20px;
				width: 1px;
				background: #000000;
				opacity: 0.1;
				content: "";
			}

			.hero__search__form form .hero__search__categories span {
				position: absolute;
				right: 14px;
				top: 14px;
			}

			.hero__search__form form input {
				width: 70%;
				border: none;
				height: 48px;
				font-size: 16px;
				color: #b2b2b2;
				padding-left: 20px;
			}

			.hero__search__form form input::placeholder {
				color: #b2b2b2;
			}

			.hero__search__form form button {
				position: absolute;
				right: 0;
				top: -1px;
				height: 50px;
			}

			.site-btn {
				font-size: 14px;
				color: #ffffff;
				font-weight: 800;
				text-transform: uppercase;
				display: inline-block;
				padding: 13px 30px 12px;
				background: #7dc129;
				border: none;
			}

			.list-inline>li {
				margin-left: 20px;
				margin-right: 20px;
			}

			.list-inline>li>a {
				color: #000;
				text-decoration: none;
				border-bottom: 3px solid #fff;
			}

			.list-inline>li>a:hover {
				border-bottom: 3px solid #7dc129;
			}

			.icon-product:hover {
				color: #7dc129;
				text-decoration: none;
			}

			.icon-product {
				text-decoration: none;
				color: #7e7e7e;
			}
			.text-name-product {
				text-decoration: none;
				color: #7e7e7e
			}
			.text-name-product:hover{
				color: #7dc129
			}
		</style>
	</head>



	<body>
		<c:if test="${sessionScope.USER.roleID ne 'AD'}">
			<header>
				<c:if test="${sessionScope.SUCCESS!=null}">
					<div class="alert alert-success alert-dismissible" style="text-align: center">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Hello ${sessionScope.USER.fullName}. WelCome back to HanaShop!</strong> Wish you a happy purchase.
					</div>
				</c:if>
				<div class="header_top" style="margin: 0 auto;">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="header_top_left" style="padding-top: 20px;">
									<ul>
										<li><i class="far fa-envelope"></i> duyttse140971@fpt.edu.vn</li>
										<li class="note">Free Shipping for all Order of $99</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-6 col-md-6" style="padding-bottom: 16px; text-align: center;">
								<div class="header__top__right">
									<div class="header_top_right_social">
										<ul>
											<li style="padding-top: 4px; color: #7dc129;"><i style="color: #000;"
																							 class="fas fa-phone-alt"></i>
												0989-123-456</li>
											<li style="padding-top: 4px;" class="note">Support 24/7</li>
										</ul>
									</div>
									<div class="header_top_right__auth">
										<!--									<button style="margin-left: 30px;" type="button" class="btn btn-outline-secondary"><i
																					class="far fa-user"></i> Login</button>-->
										<c:if test="${sessionScope.USER==null}">
											<a style="margin-left: 30px;" href="MainController?btnAction=Login" class="btn btn-outline-secondary" role="button" aria-pressed="true"><i
													class="far fa-user"></i> Login</a>
											</c:if>
											<c:if test="${sessionScope.USER!=null}">
											<a style="margin-left: 30px;" href="#" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" role="button" aria-pressed="true"><i
													class="far fa-user"></i> ${sessionScope.USER.fullName}</a>



											<div class="dropdown-menu dropdown-menu-right dropdown-default"
												 aria-labelledby="navbarDropdownMenuLink-333">
												<a class="dropdown-item" href="#">Your Profile</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="MainController?btnAction=Logout" style="color: rgb(255, 0, 0);">Sign
													out</a>
											</div>
										</c:if>



									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header_bottom">
						<nav class="navbar navbar-expand-lg navbar-light bg-light static-top mb-5"
							 style="background-color: #fff !important; height: 83px;">
							<div class="container">
								<a class="navbar-brand" href="#"><img src="./Logo.png" alt="Logo" style="width: 120px;"></a>
								<button class="navbar-toggler" type="button" data-toggle="collapse"
										data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
										aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarResponsive">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item">
											<a class="nav-link" href="MainController?btnAction=Home">HOME

											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link active" href="MainController?btnAction=Search&minPrice=&maxPrice=&cate=All&txtSearch=&index=1">PRODUCT</a>
											<span class="sr-only">(current)</span>
										</li>
										<li class="nav-item" style="margin-left: 20px;">
											<a class="nav-link" href="#">CONTACT</a>
										</li>
										<li class="nav-item">
											<a class="fas fa-shopping-bag"
											   style="color: #7dc129; padding-top: 10px;float: left;">
												<span class="fa fa-circle"></span>
												<span class="num">2</span>
											</a>
											<p style="margin-left: 50px !important;margin-top: 16px; color: #000;">items:$150.00
											</p>
										</li>
									</ul>

								</div>
							</div>
						</nav>
					</div>
			</header>
			<div class="container" style="margin-bottom: 30px;">
				<div class="row">
					<div class="col-lg-3">
						<div class="categories">
							<div class="categories_all">
								<i class="fa fa-bars"></i>
								<span>All departments</span>
							</div>
							<ul class="item_left" style="display: inline-block;">
								<li class="items-sub-left"><a href="#">Fresh Meat</a></li>
								<li class="items-sub-left"><a href="#">Vegetables</a></li>
								<li class="items-sub-left"><a href="#">Fruit &amp; Nut Gifts</a></li>
								<li class="items-sub-left"><a href="#">Fresh Berries</a></li>
								<li class="items-sub-left"><a href="#">Ocean Foods</a></li>
								<li class="items-sub-left"><a href="#">Fresh Meat</a></li>
								<li class="items-sub-left"><a href="#">Vegetables</a></li>
								<li class="items-sub-left"><a href="#">Fruit &amp; Nut Gifts</a></li>
								<li class="items-sub-left"><a href="#">Fresh Berries</a></li>

							</ul>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="hero__search">
							<div class="hero__search__form">
								<form action="#">
									<div class="hero__search__categories">
										All Categories
										<i class="fas fa-chevron-down"></i>
									</div>
									<input type="text" placeholder="What do yo u need?">
									<button type="submit" class="site-btn">SEARCH</button>
								</form>
							</div>
						</div>
						<div class="hero__item set-bg">
							<img src="https://cdn.tgdd.vn/bachhoaxanh/banners/2505/rau-an-toan-4kfarm-08122020114741.jpg"
								 alt="Picture" style="width: 95%; margin-left: 7px; margin-bottom: 10px;">
							<img src="https://cdn.tgdd.vn/bachhoaxanh/banners/2505/ca-phe-viva-huong-vi-dam-da-05012021204413.jpg"
								 alt="picture" style="width: 96%;">
						</div>
					</div>
				</div>
			</div>
			<div class="product" style="text-align: center;">

				<h2>- We Have ... -</h2>
				<hr style="width: 10%;border-bottom: 5px solid #7dc129;">
				<!--		<div class="type_product" style="text-align: center; font-size: 25px;">
							<ul class="list-inline" style="display: flex; justify-content: center;">
								<li class="list-inline">
									<a class="list-inline-item active" href="#">All
										<span class="sr-only">(current)</span>
									</a>
								</li>
								<li class="list-inline-item"><a href="">Candy</a></li>
								<li class="list-inline-item"><a href="">Milk</a></li>
								<li class="list-inline-item"><a href="">Fruit</a></li>
							</ul>
						</div>-->
			</div>
			<form action="MainController" class="row search-product" style="width: 1903px; display: flex; justify-content: center; margin-bottom: 30px;">
				<div style="width: 133px;text-align: center;margin-right: 15px;">
					<input name="minPrice" style="width: 135px;  display: inline-block;" class="form-control" type="number"
						   value="${sessionScope.MINPRICE}" step="500">
					<p></p>
				</div>
				<span style="padding-top: 6px;"><i class="fas fa-minus"></i></span>
				<div style="width: 133px;text-align: center; margin-left: 15px;">
					<input name="maxPrice" style="width: 135px; display: inline-block;" class="form-control " type="number" value="${sessionScope.MAXPRICE}"
						   step="500">
					<p></p>
				</div>
				<span style="padding-top: 6px; padding-left: 5px;">VNĐ</span>
				<div>
					<jsp:useBean id="listCate" class="duytt.dtos.Category"></jsp:useBean>
					<jsp:setProperty name="listCate" property="*"></jsp:setProperty>
						<select name="cate" style="width: 180px; margin-left: 20px;" id="inputState" class="form-control">
						<c:if test="${sessionScope.CATE == null}">
							<option value="All" selected>All</option>
							<c:forEach items="${sessionScope.LISTCATE}" var="listCate">
								<option value="${listCate.cateID}">${listCate.cateName}</option>
							</c:forEach>
						</c:if>
						<c:if test="${sessionScope.CATE != null}">
							<option value="All">All</option>
							<c:forEach items="${sessionScope.LISTCATE}" var="listCate">
								<c:if test="${sessionScope.CATE eq listCate.cateID}">
									<option value="${listCate.cateID}" selected="true">${listCate.cateName}</option>
								</c:if>
								<option value="${listCate.cateID}">${listCate.cateName}</option>
							</c:forEach>
						</c:if>

					</select>
				</div>
				<div style="text-align: center;">
					<input style="width: 300px; margin-left: 20px;" class="form-control" type="text" name="txtSearch"
						   placeholder="Enter Product's name">
					<p></p>
				</div>
				<div>
					<input type="hidden" name="index" value="1">
					<input style="margin-left: 15px;" type="submit" name="btnAction" value="Search" class="btn btn-success">
				</div>
			</form>
			<div style="display: flex; justify-content: center;">

				<div style="width: 1510px;display: flex;flex-wrap: wrap; justify-content: center;"
					 class="product-show">
					<jsp:useBean id="listProdcut" class="duytt.dtos.Product"></jsp:useBean>
					<jsp:setProperty name="listProdcut" property="*"></jsp:setProperty>
					<c:forEach items="${sessionScope.LISTPRODUCT}" var="listProdcut">
						<div class="products"
							 style="border: 1px solid #7dc129;border-radius: 10px ;max-width: 300px; margin: 10px;">
							<div style="text-align: center;">
								<a href="#"><img style="max-width: 300px;max-height: 200px;padding: 5px;"
												 src="${listProdcut.image}"
												 alt=""></a>
								<a class="text-name-product" href="#"><p style="max-width: 250px;padding-left: 15px;padding-right: 10px;height: 80px">${listProdcut.proName}</p></a>
							</div>
							<hr style="width: 80%;border-bottom: 2px solid #7dc129;">
							<p style="text-align: center">Date: ${listProdcut.createDate}</p>
							<p style="text-align: center;font-size: large "><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${listProdcut.price}" /> VNĐ</p>
							<c:if test="${sessionScope.USER.roleID eq 'US'}">
								<div class="row" style="padding: 15px">
									<div class="col-6" style="display: flex; justify-content: center;">
										<a class="icon-product" href=""><i style="font-size: 30px;"
																		   class="fas fa-heart"></i><br>Like</a>
									</div>
									<div class="col-6" style="display: flex; justify-content: center;padding-left: 0 !important;">
										<a class="icon-product" style="text-align: center;" href=""><i style="font-size: 30px;"
																									   class="fas fa-shopping-basket"></i><br>Add to Cart</a>
									</div>
								</div>
							</c:if>
						</div>


					</c:forEach>







				</div>

			</div>

			<nav aria-label="..." style="display: flex; justify-content: center; margin-top: 15px;">
				<ul class="pagination pagination-lg">
					<c:if test="${sessionScope.INDEX>=2}">
						<c:forEach begin="1" end="${sessionScope.INDEX}" var="count">
							<!--						<li class="page-item disabled">
														<a class="page-link" href="#" tabindex="-1">1</a>
													</li>-->
							<li class="page-item"><a class="page-link" href="MainController?btnAction=Search&minPrice=${sessionScope.MINPRICE}&maxPrice=${sessionScope.MAXPRICE}&cate=${sessionScope.CATE}&txtSearch=${sessionScope.TXTSEARCH}&index=${count}">${count}</a></li>
							</c:forEach>
						</c:if>

				</ul>
			</nav>


			<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
					integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
					integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
					integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
			crossorigin="anonymous"></script>
		</c:if>
	</body>


</html>
