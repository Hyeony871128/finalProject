<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>스펀딩-메인페이지</title>
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>

<script src="js/scripts.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

</head>

<body id="page-top">



	<!-- Navigation-->
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
		style="background-color: black;">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">스펀딩</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu<i class="fas fa-bars ml-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">프로젝트 보기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">프로젝트 하기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">요청게시판</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">건의사항</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<section class="page-section bg-light" id="select">
		<div class="container" style="margin-top: 10px;">


			<br>
			<br>
			<br> <a href="insertShowProduct.do">상품등록</a> <a
				href="listAdminProduct.do">상품수정/삭제</a>

			<div class="dropdown categorypage">
				<button class="btn btn btn-outline-warning dropdown-toggle"
					type="button" id="dropdownMenuButton" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">카테고리</button>

				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="fishingRod.do">낚시대</a> <a
						class="dropdown-item" href="fishingReel.do">릴</a> <a
						class="dropdown-item" href="fishingBait.do">채비</a> <a
						class="dropdown-item" href="fishingLine.do">라인</a> <a
						class="dropdown-item" href="fishingBag.do">가방</a>
				</div>
			</div>



			<div class="" style="float: right">
				<form method="get" action="">
					<input type="text" size="20" placeholder="검색어를 입력해주세요."
						style="border: 2px solid orange;"> <label for="submit"
						class="submit"> <svg class="bi bi-search" width="2em"
							height="2em" viewBox="0 0 16 16" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
								d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
                            <path fill-rule="evenodd"
								d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
                        </svg>
					</label>
				</form>

			</div>


		</div>

	</section>
	<script></script>

	<!-- Portfolio Grid-->
	<section class="page-section bg-light" id="portfolio">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase" style="text-align: left;">모든
					스펀딩</h2>
			</div>

			<div class="row portfolio-container">
				<c:forEach items="${list }"  var="p">   
                <div class="col-lg-3 col-sm-6 mb-4">
                    <div class="portfolio-item">
             
             	<c:url var="detailView" value="ProductDetailView.do">
					<c:param name="pNum" value="${p.productNum }"/>					
				</c:url>		
				
                        <a href="${detailView }">
                        <img src="/resources/img/productImg/${p.productMainName }">
                       </a>
                             <div class="portfolio-caption">
                            <div class="portfolio-caption-heading" style="text-align: left;">${p.productName }</div>
                            <div class="portfolio-caption-subheading text-muted" style="text-align: left;">${p.productPrice }</div>
                       
                    </div>
                </div>
              </div>
            </c:forEach>
			</div>






		</div>

































		</div>

		<button id="detailProduct" onclick="click()">버튼</button>

		<script>
			$("#${p.productNum}").click(function(e) {

				console.log(e);
			})

			/*  $.ajax({
			 type:'POST',
			 url :"detailProduct.do",
			 data : datasex,
			 success: function() {
			      console.log('success',alert("성공"));
			 },
			 error:function(exception){alert('Exeption:'+exception);}
			}); 
			e.preventDefault();
			}); */
		</script>

	</section>
	<footer>
		<div class="text-center">
			<ul class="nav list-group-horizontal justify-content-center">
				<li class="nav-item"><a class="nav-link active" href="#"
					style="color: black;">이용약관</a></li>

				<li class="nav-item"><a class="nav-link active" href="#"
					style="color: black;">개인정보처리방침</a></li>

				<li class="nav-item"><a class="nav-link active" href="#"
					style="color: black;">책임의 한계와 법적고지</a></li>

				<li class="nav-item"><a class="nav-link active" href="#"
					style="color: black;">회원정보 고객센터</a></li>
			</ul>
			<span class="align-middle">스펀딩 Copyright 스펀딩 corp.All Rights
				Reserved.</span>

		</div>
	</footer>


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
</body>
</html>


