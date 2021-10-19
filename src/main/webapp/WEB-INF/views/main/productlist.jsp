<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>복지몰</title>
        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/resources/css/styles2.css" rel="stylesheet" />
        

<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap');

h3 {
	 font-family:'Do Hyeon', sans-serif;
	 font-size: 30px;
}


* {
      box-sizing: border-box;
}

.mySlides {
         display: none;
}

img {
      vertical-align: middle;

}

.slideshow-container {
                  max-width: 1000px;
   
                  position: relative;
                  margin: auto;
                  
}

.text {
      color: #f2f2f2;
      font-size: 15px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
}

.numbertext {
  color: #f2f2f2;
  font-size: 22px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

.dot {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #4f52e2;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
}

.active {
  background-color: #ec008c;
}


.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
    
    
    </style>
    
    
    
    
    
    
    
    
    
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
               <a href="${pageContext.servletContext.contextPath}/maina"><img id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png"></a>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="${pageContext.servletContext.contextPath}/main/my">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}/main/productlist">상품리스트</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}/main/qna">Q&A</a></li>
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!-- Header-->
                
        
           <header class="bg-dark py-2">
           <h3 style="color:white; text-align: center;">상품리스트</h3>
           </header>
           
             <br><br><br> 
        
        
        
        <div class="slideshow-container">

      <div class="mySlides fade">
      <div class="numbertext">1 / 4</div>
      <a href="${pageContext.servletContext.contextPath}/main/fruit/applemango_view">
      <img src="<%=request.getContextPath()%>/resources/img/applemango.PNG" style="width:100%"></a>

        </div>

      <div class="mySlides fade">
      <div class="numbertext">2 / 4</div>
       <a href="${pageContext.servletContext.contextPath}/main/vege/chunggyungchae_view">
      <img src="<%=request.getContextPath()%>/resources/img/pakchoi.PNG" style="width:100%"></a>

      </div>

      <div class="mySlides fade">
      <div class="numbertext">3 / 4</div>
      <a href="${pageContext.servletContext.contextPath}/main/elec/dysondry_view">
      <img src="<%=request.getContextPath()%>/resources/img/dyson.PNG" style="width:100%"></a>
      </div>
      
      <div class="mySlides fade">
      <div class="numbertext">4 / 4</div>
      <a href="${pageContext.servletContext.contextPath}/main/kitchen/melonknife_view">
      <img src="<%=request.getContextPath()%>/resources/img/wmnife.PNG" style="width:100%"></a>
 
      </div>

      </div>

      <br>

      <div style="text-align:center">
      
      <br>
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span>
      <span class="dot"></span>  

      </div>

      <script>
      
      var slideIndex = 0;
      showSlides();

      function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
      }
  
      slideIndex++;
      
      if (slideIndex > slides.length) {slideIndex = 1}    
      for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex-1].style.display = "block";  
      dots[slideIndex-1].className += " active";
      setTimeout(showSlides, 2000); 
      }

      </script>

     		<br>
           <div style="margin-left: 73%; font-size:30px;">
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
         <!-- Section-->
         
         <br>
         
           <div class="bg-dark py-2">
           <h3 style="color:white; text-align: center;">야채</h3>
           </div>
         
         
         
      <!-- Section-->
              <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                         
                            <!-- Product image-->
                           <img id="asparagus" src="<%=request.getContextPath()%>/resources/img/vegetable/asparagus.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">아스파라거스</h5>
                                    <!-- Product price-->
                                    3,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/asparagus_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        
                            <!-- Product image-->
                           <img id="baechu" src="<%=request.getContextPath()%>/resources/img/vegetable/baechu.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">고랭지 배추</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">10,000원</span>
                                    7,500원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/baechu_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                 
                            <!-- Product image-->
                           <img id="broccoli" src="<%=request.getContextPath()%>/resources/img/vegetable/broccoli.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">브로컬리</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    1,500원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/broccoli_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="carrot" src="<%=request.getContextPath()%>/resources/img/vegetable/carrot.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">당근</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    1,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/carrot_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="chiculri" src="<%=request.getContextPath()%>/resources/img/vegetable/chiculri.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">치커리</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">4,000원</span>
                                    2,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/chiculri_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
	                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="chunggyungchae" src="<%=request.getContextPath()%>/resources/img/vegetable/chunggyungchae.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">청경채</h5>
                                    <div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">1kg 15,000원</span>
                                    1kg 10,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/chunggyungchae_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="corn" src="<%=request.getContextPath()%>/resources/img/vegetable/corn.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">옥수수</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">1kg 15,000원</span>
                                    1kg 10,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/corn_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="minari" src="<%=request.getContextPath()%>/resources/img/vegetable/minari.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">미나리</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    2,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/vege/minari_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
 		 <div class="bg-dark py-2">
           <h3 style="color:white; text-align: center;">과일</h3>
           </div>
         <!-- Section-->
          <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="shinemuscat" src="<%=request.getContextPath()%>/resources/img/fruit/shinemucat.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">샤인머스켓</h5>
                                    <!-- Product price-->
                                    13,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/shinemucat_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="strawberry" src="<%=request.getContextPath()%>/resources/img/fruit/strawberry.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">딸기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">10,000원</span>
                                    7,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/strawberry_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="watermelon" src="<%=request.getContextPath()%>/resources/img/fruit/watermelon.png">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">수박</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">11,000원</span>
                                    7000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/watermelon_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="peach" src="<%=request.getContextPath()%>/resources/img/fruit/peach.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">복숭아</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    8000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/peach_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                     <img id="papaya" src="<%=request.getContextPath()%>/resources/img/fruit/papaya.jpg"> 
                     <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">파파야</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">8,000원</span>
                                    6,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/papaya_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                     <img id="applemango" src="<%=request.getContextPath()%>/resources/img/fruit/applemango.jpg"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">애플망고</h5>
                                    <!-- Product price-->
                                    4kg 50,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/applemango_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                     <img id="goldkiwi" src="<%=request.getContextPath()%>/resources/img/fruit/goldkiwi.png"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">골드키위</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">17,000원</span>
                                    15,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/goldkiwi_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                     <img id="koreanmelon" src="<%=request.getContextPath()%>/resources/img/fruit/koreanmelon.jpg"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">참외</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    9,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/fruit/koreanmelon_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
         <div class="bg-dark py-2">
           <h3 style="color:white; text-align: center;">전자제품</h3>
           </div>
          <!-- Section-->
       <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="BESPOKEmachine" src="<%=request.getContextPath()%>/resources/img/electronics/BESPOKEmachine.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">삼성 BESPOKE 냉장고</h5>
                                    <!-- Product price-->
                                    3,400,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/refrig_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="biskabedcleaner" src="<%=request.getContextPath()%>/resources/img/electronics/biskabedcleaner.png">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">비스카 침구청소기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">180,000원</span>
                                   150,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/biskabedcleaner_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="chunghowatermachine" src="<%=request.getContextPath()%>/resources/img/electronics/chunghowatermachine.png">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">청호 얼음정수기</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">700,000원</span>
                                    600,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/watermachine_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
               <div class="card h-100">
                  <!-- Product image-->
                  <img id="dysondry"
                     src="<%=request.getContextPath()%>/resources/img/electronics/dysondry.jpg">
                  <!-- Product details-->
                  <div class="card-body p-4">
                     <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">다이슨 드라이기</h5>
                        <!-- Product reviews-->
                        <div
                           class="d-flex justify-content-center small text-warning mb-2">
                           <div class="bi-star-fill"></div>
                           <div class="bi-star-fill"></div>
                           <div class="bi-star-fill"></div>
                           <div class="bi-star-fill"></div>
                           <div class="bi-star-fill"></div>
                        </div>
                        <!-- Product price-->
                        <span class="text-muted text-decoration-line-through">500,000원</span>
                        386,900원
                     </div>
                  </div>
                  <!-- Product actions-->
                  <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                     <div class="text-center">
                        <a class="btn btn-outline-dark mt-auto"
                           href="${pageContext.servletContext.contextPath}/main/elec/dysondry_view">구매하기</a>
                     </div>

                  </div>
               </div>
            </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                       <img id="familyherbmachine" src="<%=request.getContextPath()%>/resources/img/electronics/familyherbmachine.jpg"> 
                     <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">삼성 패밀리허브 냉장고</h5>
                                    <!-- Product price-->
                                    4,000,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/familyherb_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                     <img id="philipsespressomachine" src="<%=request.getContextPath()%>/resources/img/electronics/philipsespressomachine.jpg"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">필립스 에스프레소 메이커</h5>
                                    <!-- Product price-->
                                 500,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/philipsespressomachine_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                     <img id="philpssenseIQdry" src="<%=request.getContextPath()%>/resources/img/electronics/philpssenseIQdry.jpg"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">필립스 센스IQ 드라이기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">120,000원</span>
                                    86,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/philpssenseIQdry_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                     <img id="robotmachine" src="<%=request.getContextPath()%>/resources/img/electronics/robotmachine.jpg"> 
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">삼성 로봇 청소기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                   1,400,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/elec/robotmachine_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
           <div class="bg-dark py-2">
           <h3 style="color:white; text-align: center;">주방제품</h3>
           </div>
                    <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="corncutter" src="<%=request.getContextPath()%>/resources/img/kitchenware/corncutter.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">옥수수 알까기</h5>
                                    <!-- Product price-->
                                    5,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/corncutter_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="fishgoodbye" src="<%=request.getContextPath()%>/resources/img/kitchenware/fishgoodbye.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">생선 비닐벗기는 기계</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">3,000원</span>
                                    2,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/fishgoodbye_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="icecube" src="<%=request.getContextPath()%>/resources/img/kitchenware/icecube.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">녹지않는 아이스큐브</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">12,000원</span>
                                   10,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/icecube_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="melonknife" src="<%=request.getContextPath()%>/resources/img/kitchenware/melonknife.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">수박 전용칼</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                   <span class="text-muted text-decoration-line-through">10,000원</span>
                                   5,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/melonknife_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="kitchenscissor" src="<%=request.getContextPath()%>/resources/img/kitchenware/kitchenscissor.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">고급 주방가위</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">20,000원</span>
                                    16,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/kitchenscissor_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="kitchenwareset" src="<%=request.getContextPath()%>/resources/img/kitchenware/kitchenwareset.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">주방용품 세트</h5>
                                    <!-- Product price-->
                                    60,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/kitchenwareset_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img id="mandootool" src="<%=request.getContextPath()%>/resources/img/kitchenware/mandootool.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">만두 틀</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                  	5,000원                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/mandootool_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                           <img id="meatstamper" src="<%=request.getContextPath()%>/resources/img/kitchenware/meatstamper.jpg">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">고기 다지기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                   25,000원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.servletContext.contextPath}/main/kitchen/meatstamper_view">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>