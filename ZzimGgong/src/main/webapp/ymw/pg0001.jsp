<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="ymw.*"
   %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜꽁</title>
<link rel="stylesheet" href="../index_markup/reset.css">
<style type="text/css">

    /* ㅇㅇ */
    .content{
        width: 100%;
        height: 500px;
        padding: 0px 10px;
        background-color: #fff;
    }
    .sch{
    		padding-top:20px;
    		display:flex;
    	}
   	.schBtn>button{
  		width: 40px;
	    height: 40px;
	    border: 1px solid gray;
	    border-radius: 6px 0px 0px 6px;
	    cursor:pointer;
   	}
   	.schInp{
   		width: 100%;
	    height: 40px;
	    margin-left: -1px;
	    border: 1px gray solid;
	    border-radius: 0px 6px 6px 0px;
	    background: white;
   	}
   	.schInp>input{
   		padding: 0px 10px;
	    width: 93%;
	    height: 100%;
	    border: none;
   	}
   	h3{
   		padding : 15px 0px;
   	}
   	.recKeyword{
   		display:flex;
   		justify-content: flex-start;
   		gap: 10px;
   	}
   	.recKeyword>li{
   		border: 2px solid #601986;
   		background:white;
   		padding: 5px;
   		border-radius: 10px;
   		cursor:pointer;
   	}
   	.popSch>li{
   		padding: 0px 0px 7px 25px;
   		cursor:pointer;
   	}
   	.schInp>button{
   		background-color: black;
	    color: white;
	    padding: 3px;
	    border-radius: 9px;
	    text-align: center;
	    cursor:pointer;
   	}
   	input[type=text]:focus{
   		outline:none;
   	}
   	#sch2{
		display: none;
	}

</style>

<script type="text/javascript">

</script>
</head>
<body>

<div class="wrapper">
    <header>
        <h1 class="logo"><img src="../index_markup/img/main_logo.png" alt=""></h1>
         <nav class="gnb">
            <ul>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
         </nav>
    </header>
    <section>
        <div class="content">
        	<div id="sch1">
        		<div class="sch">
	        		<div class="schBtn">
	        			<button type="button" onclick="schBtn()">검색</button>
	        		</div>
	        		<div class="schInp">
	        			<input name="schContent1" type="text" placeholder="매장을 검색해보세요." onfocus="schFocus()">
	        		</div>
	        	</div>
	        	<h3>추천 키워드</h3>
	        	<div>
	        		<div>
	        			<ul class="recKeyword">
	        				<li>브런치</li>
	        				<li>일식</li>
	        				<li>해산물</li>
	        				<li>아시아식</li>
	        				<li>구이</li>
	        				<li>주점</li>
	        			</ul>
	        		</div>
	        	</div>
	        	<h3>인기 검색어</h3>
	        		<div>
	        			<ul class="popSch">
	        				<li>연돈</li>
	        				<li>런던베이글</li>
	        				<li>숙성도</li>
	        				<li>톤쇼우</li>
	        				<li>송계옥</li>
	        				<li>해목</li>
	        				<li>청와옥</li>
	        				<li>오제제</li>
	        				<li>난포</li>
	        				<li>두루미</li>
	        			</ul>
	        		</div>
        	</div>
        	<div id=sch2>
        		<div class="sch">
	        		<div class="schBtn">
	        			<button type="button" onclick="backBtn()">이전</button>
	        		</div>
	        		<div class="schInp">
	        			<input name="schContent2" type="text" placeholder="매장을 검색해보세요.">
	        			<button id="delBtn" type="button" onclick="delBtn()">X</button>
	        		</div>
	        	</div>
	        	<h3>최근 검색어</h3>
        	</div>
        </div>
    </section>
    <footer>
        <nav class="footer_nav">
            <ul>
                <li><a href="#">서비스 이용약관</a></li>
                <li><a href="#">개인정보 처리방침</a></li>
                <li><a href="#">제휴 문의</a></li>
                <li><a href="#">채용 공고</a></li>
            </ul>
        </nav>
        <p class="jjim_info">
            (주) 찜꽁<br>
            대표 : 이지원<br>
            주소 : 서울특별시 마포구 월드컵북로 21 2층 풍성빌딩<br>
            사업자등록번호 : 202212142126<br>
            개인정보담당 : service@jjimggong.co.kr
        </p>

    </footer>
</div>

</body>
<script type="text/javascript">
	var schInpOb1 = document.querySelector("[name=schContent1]")
	var schInpOb2 = document.querySelector("[name=schContent2]")
	var backBtnOb = document.querySelector("#backBtn")
	var sch1 = document.querySelector("#sch1")
	var sch2 = document.querySelector("#sch2")
	var recKeywords = document.querySelectorAll(".recKeyword>li")
	var popSchs = document.querySelectorAll(".popSch>li")
	recKeywords.forEach(function(keyword){
		keyword.onclick = function(){
			location.href="./pg0011.jsp?sch="+keyword.innerText+"&appKind=전체&arrKind=별점높은순"
		}
	})
	popSchs.forEach(function(pop){
		pop.onclick = function(){
			location.href="./pg0011.jsp?sch="+pop.innerText+"&appKind=전체&arrKind=별점높은순"
		}
	})
	function schFocus(){
		schInpOb1.focus()
		sch1.style.display = "none";
		sch2.style.display = "block";
		schInpOb2.focus()
		
	}
	function schBtn(){
		schFocus()
	}
	function backBtn(){
		schInpOb2.value = "";
		sch1.style.display = "block";
		sch2.style.display = "none";
	}
	function delBtn(){
		schInpOb2.value = ""
		schInpOb2.focus()
	}
	schInpOb2.onkeyup = function(){
		if(event.keyCode==13){
			if(schInpOb2.value==""){
				alert("검색어를 입력해주세요.")
				schInpOb2.focus()
			}
			else{
				location.href="./pg0011.jsp?sch="+schInpOb2.value+"&appKind=전체&arrKind=별점높은순"
			}
		}
	}
</script>
</html>