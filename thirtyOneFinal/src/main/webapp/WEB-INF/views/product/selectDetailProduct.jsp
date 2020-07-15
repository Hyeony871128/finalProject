<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>어부바 메인페이지</title>
<meta content="" name="descriptison">
<meta content="낚시, 구매, 상품" name="keywords">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Mamba - v2.3.0
  * Template URL: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<jsp:include page="/WEB-INF/common/mainBar.jsp"></jsp:include>
	<section>

	<div class="container">
		<hr>
		<span class="head"> 제품상세페이지 </span> <br>

		<hr>
		<div class="row" id="topcontent">
			<div class="col-md-6" id="imgcontent">
				<img src="/resources/img/productImg/${p.productMainName }">
			</div>
			<div class="col-md-6" id="productContent">
				<form action="buyInfoProduct.do" method="post">
					<table class="table">
						<tr>
							<c:set var="category" value="${p.categoryNum }" />
							<c:choose>
								<c:when test="${category eq '1'}">
									<td>낚시대</td>
								</c:when>
								<c:when test="${category eq '2'}">
									<td>릴</td>
								</c:when>
								<c:when test="${category eq '3'}">
									<td>채비</td>
								</c:when>
								<c:when test="${category eq '4'}">
									<td>라인</td>
								</c:when>
								<c:when test="${category eq '5'}">
									<td>가방</td>
								</c:when>
							</c:choose>
					</tr>
				<tr>
						<td>상품번호 :</td>
							
							<td><input type="text" name="productNum"
								value="${p.productNum }"></td>

						</tr>
						<tr>
							<td>상품이름 :</td>

							<td><input type="text" name="productName"
								value="${p.productName }"></td>

						</tr>
						<tr>
							<td>상품사이즈 고를수있게</td>
							<td><input type="text" name="productName"
								value="${p.productSize }"></td>
						</tr>
						<tr>
							<td>상품색상 고를수있게</td>
							<td><input type="text" name="productName"
								value="${p.productColor }"></td>
							
						</tr>
						<tr>
							<td>상품가격</td>
								<td><input type="text" name="productName"
								value="${p.productPrice }"></td>
						</tr>
						<tr>
						<td>수량</td>
							<td><input type="number" name="orderQty"
								min="1" max="100" step="1" value="1"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit"value="구매">&nbsp; &nbsp; 
							<input type="submit" value="장바구니">&nbsp; &nbsp;
							<input type="reset" value="뒤로가기">&nbsp; &nbsp;
							
							</td>
						</tr>
		<%-- 	<c:param name="pNum" value="${p.productNum }"/> --%>		
		<%-- 		<c:param name="oQty" value="orderNum"/> --%>
				
						
				</table>
				</form>

			</div>
		</div>
		<hr>
		<div class="row menu">

			<div class="col-md-4 text-center" onclick="productImg();">
				<a href="">상품정보</a>
			</div>
			<div class="col-md-4 text-center" onclick="Q&AList();">
				<a href="">Q&A</a>
			</div>
			<div class="col-md-4 text-center" onclick="reviewsList();">
				<a href="">구매후기</a>
			</div>


		</div>
		<hr>

		<div class="row content" id="content">
			<div class="col-md-12" id="productImg">
				<img src="#">
				<!--판매할상품상세설명이미지 넣는곳!!!!-->

			</div>
			<div class="col-md-12" id="q&aList">
				<p>여기는 나중에 기능구현에서 ajax이용할곳입니다!!!</p>
				<table class="table">
					<tr>
						<td colspan="3">
							<button class="btn  btn-success"
								onclick=" location='qnaSale.html'">Q&A작성하기</button>
						</td>
					</tr>
					<tr>
						<th>답변 상태</th>
						<th>제목</th>
						<th>문의자</th>
					</tr>
					<tr>
						<td>답변완료</td>
						<td>배송관련</td>
						<td>토마토킹왕짱</td>
					</tr>
					<tr>
						<td>답변대기</td>
						<td>제품관련</td>
						<td>tomato</td>
					</tr>
				</table>
			</div>
			<div class="col-md-12" id="reviewList">
				<table class="table" id="line" border="0">
					<tr>
						<th>홍길동</th>
					</tr>
					<tr>
						<td>2020-05-26</td>
					</tr>
					<tr>
						<td><b>매우싱싱하고 좋았습니다!</b></td>
					</tr>
				</table>
				<table class="table" id="line" border="0">
					<tr>
						<th>김길동</th>
					</tr>
					<tr>
						<td>2020-03-23</td>
					</tr>
					<tr>
						<td><b>빠른배송!</b></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	</section>
<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-info">
						<h3>어부바</h3>
						<p>
							서울시 영등포구 당산동 <br> <br>
							<br> <strong>Phone:</strong> +82 010-6666-8888<br> <strong>Email:</strong>
							fisherbarKH@gmail.com<br>
						</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Mamba</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="assets/vendor/counterup/counterup.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>
</html>