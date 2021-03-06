<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate pattern="yy-MM-dd" value=""/> --%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">



<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->



<link
	href="/resources/register/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="/resources/register/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="/resources/register/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link href="/resources/register/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">
<!-- Main CSS-->
<link href="/resources/register/css/main.css" rel="stylesheet"
	media="all">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
	charset="utf-8"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<style>
#test {
	display: flex;
	flex-direction: row;
}
</style>
</head>

<body>
	<div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
		<p class="bazzi-font"
			style="text-align: center; font-family: Nanum Pen Script; font-size: 55px;">
			<b>어부바</b>
		</p>
		<br> <br>
		<div class="wrapper wrapper--w960 wrapper--h800">
			<div class="card card-2">

				<div class="card-body">

					<form action="newRegister.me" method="POST">
						<strong>아이디</strong>
						<div class="row row-space">

							<div class="col-6">
								<div class="input-group" id="test">
									<input class="input--style-2" type="text" placeholder="아이디 입력"
										name="memberId" style="float: left;"> <input
										type="button" onclick="" value="중복 확인"
										style="width: 110px; height: 30px; margin: 10px; float: left;">
								</div>


							</div>
						</div>
						
						<strong>비밀번호</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group" id="test">
									<input class="input--style-2" class="pw" type="password"
										placeholder="비밀번호 입력" name="memberPwd" id="pwd1">

								</div>
							</div>
						</div>
						<strong>비밀번호 확인</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group" id="test">
									<input class="input--style-2" type="password" class="pw"  placeholder="비밀번호 확인"
										name="memberPwdRe" id="pwd2">
						<span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
    					<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
                                
								</div>
							</div>
						</div>
						<strong>이름</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 j" type="text" placeholder="이름"
										name="memberName">
								</div>
							</div>
						</div>
						<strong>닉네임</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 j" type="text" placeholder="닉네임"
										name="nickName">
								</div>
							</div>
						</div>
						<strong>핸드폰</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 j" type="text" placeholder="핸드폰"
										name="phone">
								</div>
							</div>
						</div>
						<strong>이메일</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 j" type="email" placeholder="이메일"
										name="email">
								</div>
							</div>
						</div>
						<strong>생년월일</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 js-datepicker" type="text"
										placeholder="생년월일" name="birthday"> <i
										class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
								</div>
							</div>
						</div>
						<strong>성별</strong>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="gender">
											<option disabled="disabled" selected="selected">성별</option>
											<option value="null">선택안함</option>
											<option value="M">남자</option>
											<option value="F">여자</option>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group" id="test">
									<input class="input--style-2 postcodify_postcode5" type="text"
										placeholder="우편번호" name="post" value="" size="6"
										style="float: left;" readonly> <input type="button"
										id="postcodify_search_button" value="중복 확인"
										style="width: 110px; height: 30px;">
								</div>
							</div>
							<div class="col-3">
								<div class="input-group" id="test">
									<input class="input--style-2 postcodify_address" type="text"
										name="address" value="" placeholder="주소" readonly>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-6">
								<div class="input-group">
									<input class="input--style-2 postcodify_extra_info" type="text"
										name="addressDetail" value="" placeholder="상세주소">
								</div>
							</div>
						</div>


						<div class="p-t-30">
							<button class="btn btn--radius btn--green" type="submit">가입하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 주소api   -->

	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
		// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>

	 <script>
    $('.pw').focusout(function () {
        var pwd1 = $("#pwd1").val();
        var pwd2 = $("#pwd2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
</script>

	<!-- Vendor JS-->
	<script src="/resources/register/vendor/select2/select2.min.js"></script>
	<script src="/resources/register/vendor/datepicker/moment.min.js"></script>
	<script src="/resources/register/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="/resources/register/js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<!-- end document-->
