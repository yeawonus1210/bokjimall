<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>복지몰</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/resource/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
   crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
   rel="stylesheet" />
<!-- Google fonts-->
<link
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
   rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
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

h1 {
	font-size:87px;	
	font-family: 'Do Hyeon', sans-serif;
}

h3 {
	font-size:20px;
	font-family: 'Do Hyeon', sans-serif;
}

h6 {
	font-family: 'Do Hyeon', sans-serif;
	font-size:20px;
}

p {
	font-family: 'Do Hyeon', sans-serif;
	font-size:23px; 
}

.idtext {
	border:1px solid black;
	padding: 4px;
}

.pwtext {
	border:1px solid black;
	padding: 4px;
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

#welcome {
   width: 630px;
   margin-top: 100px;
    position: relative;
        left: -85px;
        top: 30px;
}

#underlogo {
   width: 500px;
   margin-left: 360px;
   margin-top: 50px;
}
</style>
</head>
<body class="overflow-x-hidden antialiased">
   <!-- Header Section -->
   <header class="relative z-50 w-full h-24">
      <div
         class="container flex items-center justify-center h-full max-w-6xl px-8 mx-auto sm:justify-between xl:px-0">
         <a href="${pageContext.servletContext.contextPath}/main"><img id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png"></a>

         <nav id="nav"
            class="absolute top-0 left-0 z-50 flex flex-col items-center justify-between hidden w-full h-64 pt-5 mt-24 text-sm text-gray-800 bg-white border-t border-gray-200 md:w-auto md:flex-row md:h-24 lg:text-base md:bg-transparent md:mt-0 md:border-none md:py-0 md:flex md:relative">
            
            <div
               class="flex flex-col block w-full font-medium border-t border-gray-200 md:hidden">
               <a href="#_"
                  class="w-full py-2 font-bold text-center text-pink-500"></a>

            </div>
         </nav>

         <div
            class="absolute left-0 flex-col items-center justify-center hidden w-full pb-8 mt-48 border-b border-gray-200 md:relative md:w-auto md:bg-transparent md:border-none md:mt-0 md:flex-row md:p-0 md:items-end md:flex md:justify-between">
            
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
   <!-- End Header Section-->

   <!-- BEGIN HERO SECTION -->
   <div
      class="relative items-center justify-center w-full overflow-x-hidden lg:pt-40 lg:pb-40 xl:pt-40 xl:pb-64">
      <div
         class="container flex flex-col items-center justify-between h-full max-w-6xl px-8 mx-auto -mt-32 lg:flex-row xl:px-0">
         <div
            class="z-30 flex flex-col items-center w-full max-w-xl pt-48 text-center lg:items-start lg:w-1/2 lg:pt-20 xl:pt-40 lg:text-left">
            
            <div class="container px-4 px-lg-5 text-center ">
  				<h1>&nbsp;&nbsp;환영합니다!</h1>
                <h3>&nbsp;&nbsp;&nbsp;&nbsp;로그인이 필요한 서비스입니다.</h3>
                
                <br>
              
				<form action="${pageContext.servletContext.contextPath}/main" method="post" align="center" style='display:inline'>
              
               <label style="color: blue; font-size: 14pt; font-style: !important;">
               		<p>&nbsp;&nbsp;아이디   : <input class="idtext" type="text" name="userid" id="id" placeholder=" 아이디를 입력해주세요."></label></p><br>
				<label style="color: blue; font-size: 14pt; font-style: !important;">
					<p>비밀번호 : <input class="pwtext" type="password" name="userpassword" id="password" placeholder="비밀번호를 입력해주세요."></label></p>

				<br>
                  <h6 style="color: red">${ requestScope.message }</h6>
				<br>
				
				&nbsp; &nbsp;
				<button class="relative self-start inline-block w-auto px-10 py-4 mx-auto mt-0 text-base font-bold text-white bg-indigo-600 border-t border-gray-200 rounded-md shadow-xl sm:mt-1 fold-bold lg:mx-0"
                   type="submit" >
                                     로그인</button>
      	 </form>
      	  &nbsp;&nbsp;
        <form action="${pageContext.servletContext.contextPath}/homejoin" method="get" style='display:inline'>
                <button class="relative self-start inline-block w-auto px-8 py-4 mx-auto mt-0 text-base font-bold text-white bg-indigo-600 border-t border-gray-200 rounded-md shadow-xl sm:mt-1 fold-bold lg:mx-0" onclick="alert('회원가입창으로 이동합니다.')" type="submit">회원가입</button>
                
                </form>
      
      
               
            </div>
            <svg class="absolute left-0 max-w-md mt-24 -ml-64 left-svg"
               viewBox="0 0 423 423" xmlns="http://www.w3.org/2000/svg"
               xmlns:xlink="http://www.w3.org/1999/xlink">
                    <defs>
                        <linearGradient x1="100%" y1="0%" x2="4.48%"
                  y2="0%" id="linearGradient-1">
                            <stop stop-color="#5C54DB" offset="0%" />
                            <stop stop-color="#6A82E7" offset="100%" />
                        </linearGradient>
                        <filter x="-9.3%" y="-6.7%" width="118.7%"
                  height="118.7%" filterUnits="objectBoundingBox" id="filter-3">
                            <feOffset dy="8" in="SourceAlpha"
                  result="shadowOffsetOuter1" />
                            <feGaussianBlur stdDeviation="8"
                  in="shadowOffsetOuter1" result="shadowBlurOuter1" />
                            <feColorMatrix
                  values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0"
                  in="shadowBlurOuter1" />
                        </filter>
                        <rect id="path-2" x="63" y="504" width="300"
                  height="300" rx="40" />
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1"
                  fill="none" fill-rule="evenodd" opacity=".9">
                        <g id="Desktop-HD"
                  transform="translate(-39 -531)">
                            <g id="Hero" transform="translate(43 83)">
                                <g id="Rectangle-6"
                  transform="rotate(45 213 654)">
                                    <use fill="#000"
                  filter="url(#filter-3)" xlink:href="#path-2" />
                                    <use fill="url(#linearGradient-1)"
                  xlink:href="#path-2" />
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>
         </div>
         <div
            class="relative z-50 flex flex-col items-end justify-center w-full h-full lg:w-1/2 ms:pl-10">
            <div
               class="container relative left-0 w-full max-w-4xl lg:absolute xl:max-w-6xl lg:w-screen">
                <img id="welcome" src="<%=request.getContextPath()%>/resources/img/welcome.jpg">
            </div>
         </div>
      </div>

   </div>


</body>
</html>