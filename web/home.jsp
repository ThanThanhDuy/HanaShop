<%-- 
    Document   : home
    Created on : Jan 10, 2021, 3:04:36 PM
    Author     : thant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
			  integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/1acc75252a.js" crossorigin="anonymous"></script>
		<title>Home</title>
		<style>
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
				margin-left: 20px;
				margin-right: 370px;

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

			.dropdown-menu {
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
			}

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
			.btn-login {
				font-size: 0.9rem;
				letter-spacing: 0.05rem;
				padding: 0.75rem 1rem;
				border-radius: 2rem;
			}
		</style>
	</head>

	<body>
		<header>
			<div class="header_top" style="margin: 0 auto;">
				<div class="container">
					<div class="row" style="display: flex;justify-content: center;margin-left: 100px">
						<div class="col-lg-6 col-md-6">
							<div class="header_top_left" style="padding-top: 20px;display: flex;justify-content: center">
								<ul >
									<li><i class="far fa-envelope"></i> duyttse140971@fpt.edu.vn</li>
									
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
<!--								<div class="header_top_right__auth">
									<button style="margin-left: 30px;" type="button" class="btn btn-outline-secondary"><i
											class="far fa-user"></i> Login</button>
									<a style="margin-left: 30px;" href="MainController?btnAction=Login" class="btn btn-outline-secondary" role="button" aria-pressed="true"><i
											class="far fa-user"></i> Login</a>
								</div>-->
							</div>
						</div>
					</div>
				</div>
				<div class="header_bottom">
					<nav class="navbar navbar-expand-lg navbar-light bg-light static-top mb-5"
						 style="background-color: #fff !important; height: 83px;display: flex;justify-content: center">
						<div class="container" >
							<a class="navbar-brand" href="#"><img src="./Logo.png" alt="Logo" style="width: 120px;margin-left: 200px"></a>
							<button class="navbar-toggler" type="button" data-toggle="collapse"
									data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
									aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarResponsive" style="height: 56px;padding-bottom: 10px; margin-left: 200px">
								<ul class="navbar-nav ml-auto">
									<li class="nav-item">
										<a class="nav-link active" href="MainController?btnAction=Home">HOME
											<span class="sr-only">(current)</span>
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link " href="MainController?minPrice=&maxPrice=&cate=All&txtSearch=&index=1&btnAction=Search">PRODUCT</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">CONTACT</a>
									</li>
									<!-- <li class="nav-item">
										<a class="fas fa-shopping-bag"
											style="color: #7dc129; padding-top: 10px;float: left;">
											<span class="fa fa-circle"></span>
											<span class="num">2</span>
										</a>
										<p style="margin-left: 50px !important;margin-top: 16px; color: #000;">items:$150.00
										</p>
									</li> -->
								</ul>

							</div>
						</div>
					</nav>
				</div>
		</header>
		<div class="content" style="display: flex; justify-content: center;">
			<div class="shadow-lg" style="background-color: #000;height: 70vh;width: 80%;background-image: url('./background2.png'); border-radius: 10px;" >
				<div style="width: 200px; margin-top: 520px; margin-left: 250px;">

<!--					<button
						class="btn btn-lg btn-secondary  btn-login text-uppercase font-weight-bold mb-2"
						type="submit">Shopping Now </button>-->
					<a href="MainController?minPrice=&maxPrice=&cate=All&txtSearch=&index=1&btnAction=Search" class="btn btn-lg btn-secondary  btn-login text-uppercase font-weight-bold mb-2" role="button" aria-pressed="true">Shopping Now</a>
					<i style="font-size: 30px; color: #7dc129;" class="far fa-hand-point-left"></i>                 
				</div>
			</div>
		</div>



		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
				integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
				integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
				integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
	</body>
</html>
