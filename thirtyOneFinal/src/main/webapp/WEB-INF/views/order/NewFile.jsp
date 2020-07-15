<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <title>주문/결제</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!--    다음 주소 api    -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraRoadAddr !== '') {
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("roadAddress").value = roadAddr;
                    document.getElementById("jibunAddress").value = data.jibunAddress;



                    var guideTextBox = document.getElementById("guide");
                    // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                    if (data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';

                    } else if (data.autoJibunAddress) {
                        var expJibunAddr = data.autoJibunAddress;
                        guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        guideTextBox.style.display = 'block';
                    } else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                    }
                }
            }).open();
        }

        /* 결제 방식 */
        function showBankbook() {
            var bankBook = document.getElementById("bankBook");
            if (bankBook.checked) {
                document.getElementById("bankBookBox").style.display = "block";
                document.getElementById("cardBox").style.display = "none";
                document.getElementById("transferBox").style.display = "none";
            }
        }

        function showCard() {
            var card = document.getElementById("card");
            if (card.checked) {
                document.getElementById("bankBookBox").style.display = "none";
                document.getElementById("cardBox").style.display = "block";
                document.getElementById("transferBox").style.display = "none";
            }
        }

        function showTransfer() {
            var transfer = document.getElementById("transfer");
            if (transfer.checked) {
                document.getElementById("bankBookBox").style.display = "none";
                document.getElementById("cardBox").style.display = "none";
                document.getElementById("transferBox").style.display = "block";
            }
        }
    </script>

    <style>
        .head {
            font-size: 30px;
            color: deepskyblue;
        }

        .line {
            border: 0.5px solid lightgray;
            background: lightgray;
        }

        .userInfo ul li {
            list-style: none;
            height: 40px;
        }

        .userInfo label {
            float: left;
            width: 100px;
        }

        .paySystem label {
            width: 100px;
        }

        .box {
            display: none;
        }

        .box li {
            list-style: none;
        }

        .box label {
            width: 70px;
        }

        .sumAmount {
            font-size: 30px;
            float: right;
        }

        .sumAmount b {
            color: cornflowerblue;
            float: right;
        }

        .submitBtn {
            margin-top: 70px;
            margin-left: 40%;
        }
    </style>
</head>

<body>
    <header>

    </header>

   
        <div class="container">
            <span class="head">
                주문 / 결제
            </span>

            <br>
            <div class="line"></div><br><br>

            <div class="orderList table-responsive" style="text-align:center">
                <table class="table">
                    <thead>
                        <tr class="success">
                            <th style="text-align:center">상품정보</th>
                            <th style="text-align:center">판매자</th>
                            <th style="text-align:center">수량</th>
                            <th style="text-align:center">배송비</th>
                            <th style="text-align:center">주문 금액</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td> <img src="img/%EA%B3%A0%EC%B0%BD%EC%88%98%EB%B0%95.jpg" width="100px;" height="100px;"><br>
                                고창 수박
                            </td>
                            <td>프레비</td>
                            <td>1</td>
                            <td>2,500</td>
                            <td>28,900</td>
                        </tr>
                    </tbody>

                </table>
            </div>

            <br>
            <div class="line"></div>


        </div>
    <div class="container">
 <button type="submit" class="btn btn-primary" onclick="">결제하기</button>
  <button type="submit" class="btn btn-primary" onclick="">쇼핑하기</button>
</div>

        <br><br><br>

    

    <footer>

    </footer>

</body></html>
