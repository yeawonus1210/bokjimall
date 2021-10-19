<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>         <!-- 골드키위 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>복지몰</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/resources/css/styles3.css" rel="stylesheet" />
    </head>
    
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap');
       #fruit_kiwi{
          width:100%;
          height:450px;
       }
       .bg-dark {
         background-color: #4f52e2 !important;
      }
       .row{
          margin-left:100px;
       }
    
       #title_kiwi{
          font-size:45px;
          font-family: 'Do Hyeon', sans-serif;
          margin-bottom:5px;
       }
       
       #dollar{
          font-size:30px;
       }
       
.text-white {
    --text-opacity: 1;
    color: #fff;
    color: rgba(255,255,255,var(--text-opacity));
}
.shadow-xl {
    box-shadow: 0 20px 25px -5px rgb(0 0 0 / 10%), 0 10px 10px -5px rgb(0 0 0 / 4%);
}
.relative {
    position: relative;
}
.px-8 {
    padding-left: 2rem;
    padding-right: 2rem;
}
.py-4 {
    padding-top: 1rem;
    padding-bottom: 1rem;
}
.mt-0 {
    margin-top: 0;
}
.mx-auto {
    margin-left: auto;
    margin-right: auto;
}
.text-base {
    font-size: 1rem;
}
.font-bold {
    font-weight: 700;
}
.self-start {
    align-self: flex-start;
}
.inline-block {
    display: inline-block;
}
.border-t {
    border-top-width: 1px;
}
.rounded-md {
    border-radius: .375rem;
}
.border-gray-200 {
    --border-opacity: 1;
    border-color: #edf2f7;
    border-color: rgba(237,242,247,var(--border-opacity));
}
.bg-indigo-600 {
    --bg-opacity: 1;
    background-color: #5a67d8;
    background-color: rgba(90,103,216,var(--bg-opacity));
}
.text-white {
    color: #fff !important;
}
.py-4 {
    padding-top: 1.5rem !important;
    padding-bottom: 1.5rem !important;
}
.mt-0 {
    margin-top: 0 !important;
}
.mx-auto {
    margin-right: auto !important;
    margin-left: auto !important;
}
.w-auto {
    width: auto !important;
}
a {
    color: inherit;
    text-decoration: inherit;
}
a {
    background-color: transparent;
}
a {
    color: #1D809F;
    text-decoration: underline;
}
*, ::after, ::before {
    box-sizing: border-box;
    border-width: 0;
    border-style: solid;
    border-color: #e2e8f0;
}
*, *::before, *::after {
    box-sizing: border-box;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
} 

#fruit_kiwi_review{
   weight:80px;
   height:80px;
}


span{
   color:blue;
}

#fruit_strawberry_contect,#fruit_mango_contect,#fruit_peach_contect{
   weight:80px;
   height:80px;

}

#write{
   text-align:center;
   font-family: 'Do Hyeon', sans-serif;
}

#form1{
   height:470px;
}

#contect{
   margin-left:9px;
}

#menu_under{
   height:30px;
}

#navbarSupportedContent{
   margin-right:50px;
}

#font_red{
   color:red;
   font-family: 'Do Hyeon', sans-serif;
   font-size:20px;
}

#recommand, #connect_t{
   font-family: 'Do Hyeon', sans-serif;
}

#navbarSuppor {
   text-align:center;
}

.cash {
   background: #3D94F6;
   background-image: -webkit-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -moz-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -ms-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -o-linear-gradient(top, #3D94F6, #1E62D0);
   background-image: -webkit-gradient(to bottom, #3D94F6, #1E62D0);
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
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
   margin-top:70px;
}

.cash:hover {
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




    </style>
    
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/maina">복지몰</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}/main/my">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}/main/qna">Q&A</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page header with logo and tagline-->
        <header class="py-4 bg-light border-bottom mb-4">
            <div id="menu_under" class="container">
           <div style="margin-left: 85%; font-size:30px; margin-bottom:20px;">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">상품리스트</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="${pageContext.servletContext.contextPath}/main/fruit">과일</a></li>
                                <li><a class="dropdown-item" href="${pageContext.servletContext.contextPath}/main/vegetable">야채</a></li>
                                <li><a class="dropdown-item" href="${pageContext.servletContext.contextPath}/main/electronics">전자제품</a></li>
                                <li><a class="dropdown-item" href="${pageContext.servletContext.contextPath}/main/kitchenware">주방용품</a></li>
                            </ul>
                        </li>
                         
                 </ul>
           </div>
        </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
            
                <!-- Blog entries-->
                <div class="col-lg-5">  
                     <!--사진부분 컨테이너 넓이 조절-->
                    <!-- Featured blog post-->                    
                    <div id="form" class="card mb-4">
                        <img id="fruit_kiwi" src="<%=request.getContextPath()%>/resources/img/fruit/koreanmelon.jpg">
                        <div class="card-body">
                            <div class="small text-muted"><p id="font_red">상세 정보</p></div>
                            <p>싱싱한 참외 한번 사면 계속 사고 싶어지는 과일<br>
                            	갈아 먹어도 계속 먹고 싶어져요<br>
                            	명절 선물로 딱입니다</p>
                            <hr>
                            <p class="card-text">
                            <form>
                               <table id="kiwi_review">
                                  <tr>
                                     <td><img id="fruit_kiwi_review" src="<%=request.getContextPath()%>/resources/img/fruit/koreanmelon.jpg">&nbsp;&nbsp;</td>
                                     <td id="recommand"><center>⭐추천 리뷰⭐</center>
                                     <p>너무 맛있어서 3묶음 더 샀어요!
                                        앞으로 더 많이 사먹을게요</td>
                               </table>
                            </form>
                  
                        </div>
                    </div>
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6">

                        </div>
                        <div class="col-lg-6">


                        </div>
                    </div>
                    <!-- Pagination-->

                </div>
                <!-- Side widgets-->
                <div class="col-lg-5">
                    <!-- Search widget-->
                    <div id="form1" class="card mb-4">
                    
               	&nbsp;&nbsp;&nbsp;⭐⭐⭐⭐⭐ >> 1000개의 리뷰 더 보기
               <br><br>
               &nbsp;&nbsp;&nbsp;복지몰 1등 참외 상품, 국내산 ! ! !
               <p id="title_kiwi">&nbsp;참외</p>
               <p id="dollar"><strong>&nbsp;&nbsp;9000원~</strong></p>
               <hr>
			   <br>
               <strong>&nbsp;&nbsp;&nbsp;👉👉혜택</strong>
               &nbsp;&nbsp;&nbsp;✔2개이상 구매시 개당 200원 할인<br>
               &nbsp;&nbsp;&nbsp;✔리뷰 등록 시 300원 할인<br>
               &nbsp;&nbsp;&nbsp;✔여름 혜택 : 무료쿠폰 10장 지급
               <br>
               <br>
               <button id="cash" class="cash" type="submit">결제하기</button>
                    </div>
                    <br><hr><br>
               <div id="form2" class="card mb-4">
               <center><p><strong>이 상품과 <span id="connect_t">연관된 상품!!!</span> (✔사진 클릭✔)</strong></p>
               <form id="contect">
                  <table>
                     <tr>

                        <td><a href="${pageContext.servletContext.contextPath}/main/fruit/papaya_view">
                        <img id="fruit_strawberry_contect" src="<%=request.getContextPath()%>/resources/img/fruit/papaya.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        
                        <td><a href="${pageContext.servletContext.contextPath}/main/fruit/watermelon_view">
                        <img id="fruit_mango_contect" src="<%=request.getContextPath()%>/resources/img/fruit/watermelon.png"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        
                        <td><a href="${pageContext.servletContext.contextPath}/main/fruit/shinemucat_view">
                        <img id="fruit_peach_contect" src="<%=request.getContextPath()%>/resources/img/fruit/shinemucat.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>

                     </tr>
                     
                     <tr id="write">
                        <td>파파야</td>
                        <td>수박</td>
                        <td>샤인머스캣</td>
                     </tr>
                  </table>
               
               </form>
               </center>
                    </div>
                   </div>

                    <!-- Categories widget-->
         </div>

        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>