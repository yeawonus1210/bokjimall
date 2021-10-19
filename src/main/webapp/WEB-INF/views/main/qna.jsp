<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="width=device-width, initial-scale=1.0; charset=UTF-8">
<title>게시판 리스트</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.9.2/tailwind.min.css">
<style >
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap');
@media ( max-width :1520px) {
	.left-svg {
		display: none;
	}
}

  .my__page,.product__list,.q_and_a {
      
      font-family:'Do Hyeon', sans-serif;
      font-size:20px;
      
      }

#logo {
	width: 70px;
	height: 70px;
	margin-left: 5px;
}
#nav-mobile-btn.close span:first-child {
	transform: rotate(45deg);
	top: 4px;
	position: relative;
	background: #a0aec0;
}

#nav-mobile-btn.close span:nth-child(2) {
	transform: rotate(-45deg);
	margin-top: 0px;
	background: #a0aec0;
}
#mainwelfare {
	width: 340px;
	margin-top: 150px;
}

#underlogo {
	width: 500px;
	margin-left: 360px;
	margin-top: 50px;
}

.reg {
	text-align: center;
	font-size: 50px;
	font-family: 'Do Hyeon', sans-serif;
}

.p_red {
	color:red;
	font-family: 'Do Hyeon', sans-serif;
	font-size:17px;
}


.write_b {
   background: #3D94F6;
   background-image: -webkit-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -moz-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -ms-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -o-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -webkit-gradient(to bottom, #3D94F6, #1E62D0);
   -webkit-border-radius: 15px;
   -moz-border-radius: 15px;
   border-radius: 15px;
   color: #FFFFFF;
   font-family: 'Do Hyeon', sans-serif;
   font-size: 16px;
   font-weight: 200;
   padding: 10px;
   -webkit-box-shadow: 1px 1px 13px 0 #000000;
   -moz-box-shadow: 1px 1px 13px 0 #000000;
   box-shadow: 1px 1px 13px 0 #000000;
   text-shadow: 0 1px 13px #000000;
   border: solid #337FED 1px;
   text-decoration: none;
   display: inline-block;
   cursor: pointer;
   text-align: center;
}
.write_b:hover {
   border: solid #FFFFFF 2px;
   background: #1E62D0;
   background-image: -webkit-linear-gradient(top, #1E62D0, #3D94F6);
   background-image: -moz-linear-gradient(top, #1E62D0, #3D94F6);
   background-image: -ms-linear-gradient(top, #1E62D0, #3D94F6);
   background-image: -o-linear-gradient(top, #1E62D0, #3D94F6);
   background-image: -webkit-gradient(to bottom, #1E62D0, #3D94F6);
   -webkit-border-radius: 18px;
   -moz-border-radius: 18px;
   border-radius: 18px;
   text-decoration: none;
}

.box {
box-sizing: border-box;
margin-left:30%;
margin-right:30%;
padding-top:3%;
padding-bottom:3%;
border:7px solid #003399;
}




td {
font-weight:bold;
font-size:19px;
font-family: 'Do Hyeon', sans-serif;
border:2px solid #003399;
text-align:center;
}

tr{
	text-align:center;
}
	
</style>
</head>
<body class="overflow-x-hidden antialiased">
<header class="relative z-50 w-full h-24">
<div
			class="container flex items-center justify-center h-full max-w-6xl px-8 mx-auto sm:justify-between xl:px-0">
			<a href="${pageContext.servletContext.contextPath}/maina"><img id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png"></a>

			<nav id="nav"
class="absolute top-0 left-0 z-50 flex flex-col items-center justify-between hidden w-full h-64 pt-5 mt-24 text-sm text-gray-800 bg-white border-t border-gray-200 md:w-auto md:flex-row md:h-24 lg:text-base md:bg-transparent md:mt-0 md:border-none md:py-0 md:flex md:relative">
				<a href="${pageContext.servletContext.contextPath}/main/my"
			 class="my__page">마이페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a href="${pageContext.servletContext.contextPath}/main/productlist"
                    class="product__list">상품리스트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a href="${pageContext.servletContext.contextPath}/main/qna"
                    class="q_and_a">Q&A</a>
				<div
					class="flex flex-col block w-full font-medium border-t border-gray-200 md:hidden">
					<a href="#_"
						class="w-full py-2 font-bold text-center text-pink-500">Log</a>

				</div>
			</nav>
			<div
				class="absolute left-0 flex-col items-center justify-center hidden w-full pb-8 mt-48 border-b border-gray-200 md:relative md:w-auto md:bg-transparent md:border-none md:mt-0 md:flex-row md:p-0 md:items-end md:flex md:justify-between">
				<a href="${pageContext.servletContext.contextPath}/homelog"
					class="relative z-40 px-3 py-2 mr-0 text-sm font-bold text-pink-500 md:px-5 lg:text-white sm:mr-3 md:mt-0">LogOut</a>
				
				<svg
					class="absolute top-0 left-0 hidden w-screen max-w-3xl -mt-64 -ml-12 lg:block"
					viewBox="0 0 818 815" xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
                    <defs>
                        <linearGradient x1="0%" y1="0%" x2="100%"
						y2="100%" id="c">
                            <stop stop-color="#E614F2" offset="0%" />
                            <stop stop-color="#FC3832" offset="100%" />
                        </linearGradient>
                        <linearGradient x1="0%" y1="0%" x2="100%"
						y2="100%" id="f">
                            <stop stop-color="#657DE9" offset="0%" />
                            <stop stop-color="#1C0FD7" offset="100%" />
                        </linearGradient>
                        <filter x="-4.7%" y="-3.3%" width="109.3%"
						height="109.3%" filterUnits="objectBoundingBox" id="a">
                            <feOffset dy="8" in="SourceAlpha"
						result="shadowOffsetOuter1" />
                            <feGaussianBlur stdDeviation="8"
						in="shadowOffsetOuter1" result="shadowBlurOuter1" />
                            <feColorMatrix
						values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15 0"
						in="shadowBlurOuter1" />
                        </filter>
                        <filter x="-4.7%" y="-3.3%" width="109.3%"
						height="109.3%" filterUnits="objectBoundingBox" id="d">
                            <feOffset dy="8" in="SourceAlpha"
						result="shadowOffsetOuter1" />
                            <feGaussianBlur stdDeviation="8"
						in="shadowOffsetOuter1" result="shadowBlurOuter1" />
                            <feColorMatrix
						values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"
						in="shadowBlurOuter1" />
                        </filter>
                        <path
						d="M160.52 108.243h497.445c17.83 0 24.296 1.856 30.814 5.342 6.519 3.486 11.635 8.602 15.12 15.12 3.487 6.52 5.344 12.985 5.344 30.815v497.445c0 17.83-1.857 24.296-5.343 30.814-3.486 6.519-8.602 11.635-15.12 15.12-6.52 3.487-12.985 5.344-30.815 5.344H160.52c-17.83 0-24.296-1.857-30.814-5.343-6.519-3.486-11.635-8.602-15.12-15.12-3.487-6.52-5.343-12.985-5.343-30.815V159.52c0-17.83 1.856-24.296 5.342-30.814 3.486-6.519 8.602-11.635 15.12-15.12 6.52-3.487 12.985-5.343 30.815-5.343z"
						id="b" />
                        <path
						d="M159.107 107.829H656.55c17.83 0 24.296 1.856 30.815 5.342 6.518 3.487 11.634 8.602 15.12 15.12 3.486 6.52 5.343 12.985 5.343 30.816V656.55c0 17.83-1.857 24.296-5.343 30.815-3.486 6.518-8.602 11.634-15.12 15.12-6.519 3.486-12.985 5.343-30.815 5.343H159.107c-17.83 0-24.297-1.857-30.815-5.343-6.519-3.486-11.634-8.602-15.12-15.12-3.487-6.519-5.343-12.985-5.343-30.815V159.107c0-17.83 1.856-24.297 5.342-30.815 3.487-6.519 8.602-11.634 15.12-15.12 6.52-3.487 12.985-5.343 30.816-5.343z"
						id="e" />
                    </defs>
                    <g fill="none" fill-rule="evenodd" opacity=".9">
                        <g transform="rotate(65 416.452 409.167)">
                            <use fill="#000" filter="url(#a)"
						xlink:href="#b" />
                            <use fill="url(#c)" xlink:href="#b" />
                        </g>
                        <g transform="rotate(29 421.929 414.496)">
                            <use fill="#000" filter="url(#d)"
						xlink:href="#e" />
                            <use fill="url(#f)" xlink:href="#e" />
                        </g>
                    </g>
                </svg>
			</div>
			<div id="nav-mobile-btn"
				class="absolute top-0 right-0 z-50 block w-6 mt-8 mr-10 cursor-pointer select-none md:hidden sm:mt-10">
				<span
					class="block w-full h-1 mt-2 duration-200 transform bg-gray-800 rounded-full sm:mt-1"></span>
				<span
					class="block w-full h-1 mt-1 duration-200 transform bg-gray-800 rounded-full"></span>
			</div>
		</div>
		</header>
		<br><br><br>
		
<div class="box">
	
	<h2 class="reg">Q&A</h2>
		
		
	<br><br>
	<center>	
	<table border="1" cellpadding="3" cellspacing="2" width="500" class="tablecolor">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
		</tr>
		<!-- 게시글 목록 가져오기 -->
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.bNo}</td>
				<td>
					<c:forEach begin="1" end="${ vo.bIndent }"></c:forEach>
					<a href="${pageContext.servletContext.contextPath}/main/contentView?bNo=${ vo.bNo } ">${ vo.bSubject }</a>
				</td>
				<td>${ vo.bName }</td>
				<td>${ vo.bDate }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align="center"><a class="write_b" href="${pageContext.servletContext.contextPath}/main/writeForm">글쓰기</a></td>
		</tr>
	</table>	

</div>
</body>
</html>