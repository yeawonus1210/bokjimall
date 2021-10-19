<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>복지몰</title>
<!--
        For more customization options, we would advise
        you to build your TailwindCSS from the source.
        https://tailwindcss.com/docs/installation
    -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.9.2/tailwind.min.css">
<!-- Small CSS to Hide elements at 1520px size -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap');
@media ( max-width :1520px) {
	.left-svg {
		display: none;
	}
}

#logo {
	width: 70px;
	height: 70px;
	margin-left: 5px;
}
/* small css for the mobile nav close */
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

.doublecheck {
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
   font-family:'Do Hyeon', sans-serif;
   font-size: 13px;
   font-weight: 200;
   padding: 8px;
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

.doublecheck:hover {
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

 .sub_mit {
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

.sub_mit:hover {
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

.cancel {
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

.cancel:hover {
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
margin-left:35%;
margin-right:35%;
padding-top:3%;
padding-bottom:3%;
border:7px solid #003399;
}




.nm {
border: 1px solid black;
}

.id {
 border: 1px solid black;
}

.pw {
 border: 1px solid black;
}

.em {
 border: 1px solid black;
}

.call {
 border: 1px solid black;
}

.pwcheck {
 border: 1px solid black;
}

#member_post {
 border: 1px solid black;

}

#member_addr {
 border: 1px solid black;
}

.detail_addr {
 border: 1px solid black;
}

td {
font-weight:bold;
font-size:18px;
font-family: 'Do Hyeon', sans-serif;
}

</style>
</head>
<body class="overflow-x-hidden antialiased">
	<!-- Header Section -->
	<header class="relative z-50 w-full h-24">
		<div
			class="container flex items-center justify-center h-full max-w-6xl px-8 mx-auto sm:justify-between xl:px-0">
			<a href="${pageContext.servletContext.contextPath}/main"><img id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png"></a>

				<div
					class="flex flex-col block w-full font-medium border-t border-gray-200 md:hidden">
					<a href="#_"
						class="w-full py-2 font-bold text-center text-pink-500">Log</a>

				</div>
			</nav>

			<div
				class="absolute left-0 flex-col items-center justify-center hidden w-full pb-8 mt-48 border-b border-gray-200 md:relative md:w-auto md:bg-transparent md:border-none md:mt-0 md:flex-row md:p-0 md:items-end md:flex md:justify-between">
				<a href="#_"
					class="relative z-40 px-3 py-2 mr-0 text-sm font-bold text-pink-500 md:px-5 lg:text-white sm:mr-3 md:mt-0"></a>
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
	<center>
	<div class="box">
				<h3 class="reg">My Page</h3>
	<br><br>
		
				<form id="myForm" action="${pageContext.servletContext.contextPath}/main/update_my" method="post" name="f1">
				<table>
					<tr>
						<td>&nbsp;&nbsp; ID</td> 
						<td><p><input class="id" type="text" id="userid" name="userid" size="30">&nbsp;&nbsp;</p></td> 
					</tr>
					<tr>
						<td>&nbsp;&nbsp; Name</td> 
						<td><p><input class="nm" type="text" id="name" name="username" size="30"> 
					<tr>
					<tr>
						<td>&nbsp;&nbsp; Email</td> 
						<td><p><input class="em" type="text" id="email" name="useremail" size="30" required> 
					</tr>
					<td colspan="2" align="right">
					<h5 style="color: red">${ requestScope.messagee }</h5>
						<br>
						<button type="submit" class="doublecheck">회원정보 변경</button>
				</form>
				
				<br>
				<br>
				<form action="${pageContext.servletContext.contextPath}/main/update_pw" method="post">	
					<input type="hidden" name="id" value="${ member.id }">
					<tr>
						<td>&nbsp;&nbsp; ID</td> 
						<td><input class="id" type="text" id="userid" name="userid" size="30" placeholder="기존아이디를 입력하세요"> &nbsp;&nbsp;</p></td>
					</tr>
					
					<tr>
						<td>&nbsp;&nbsp; New Password</td> 
						<td><input class="pw" id="pw" size="30" name="userpassword" type="password" placeholder="새비밀번호를 입력하세요."required></td>
					</tr>
					<td colspan="2" align="right">
					<h5 style="color: red">${ requestScope.messageee }</h5>
						<br>
						<button type="submit" id="joinBtn" class="doublecheck">비밀번호 변경</button>					
					
				</form>
				<br>
				<br>
				
				<form action="${pageContext.servletContext.contextPath}/main/deleteAction" method="post">
				탈퇴할 아이디를 입력해주세요 : <input type="text" class="id" id="userid" name="userid" size="25">
				<tr>
				<td colspan="2" align="right">
					<h5 style="color: red">${ requestScope.delete }</h5>
					<br>
					<button type="submit" class="doublecheck">회원탈퇴하기</button>
					
					</p>
				</tr>
				</form>
				</table>
				<br>
				<br>
				<br>
				
				
			</div>
		</div>
	</div>
	</center>
</body>
</html>