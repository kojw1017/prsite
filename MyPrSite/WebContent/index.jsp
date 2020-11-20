<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_gun/myprsite.css">
</head>
<body>
  <!-- header -->
  <jsp:include page="header.jsp" /> 
  <!-- content -->
  <div class="content">
    <div>
      <section class="section1">    
       
        <div class="main_img_page">  
          <!-- <a href="http://localhost:9000/Saram/index.jsp"><img src="http://localhost:9000/Saram/images/logo.png" class="logo_img"></a> -->
          <div class="search">
              <span>175만건의 포트폴리오, 98.4%의 만족도</span>
              <h1>나의 PR 공유 <a href=""> 사람온</a></h1>
              <div class="search_bar">
                <input type="text" placeholder="검색....."><button><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/ic_search.png"></button>
              </div>
          </div>       
        
        <div class="main_btn_page">
          <div class="main_btn_icon">
            <a href=""><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/modules/directories/white/ic_design_3.png"></a>
            <a href=""><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/modules/directories/white/ic_it_3.png"></a>
            <a href=""><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/modules/directories/white/ic_content_3.png"></a>
            <a href=""><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/modules/directories/white/ic_translation_3.png"></a>
            <a href=""><img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/modules/directories/white/ic_papers_3.png"></a>
          </div>
        </div>
        </div>
      </section>
      
      <section class="section2">
        <div class="pr_list">
          <div class="design_pr">
            <span>디자인 카테고리에서 인기있어요!</span>
            <button type="button">></button>
            <button type="button"><</button>
            <div class="design_img">
            
              <a href =""><div class="design_one"></div></a>
              <a href =""><div class="design_two"></div></a>
              <a href =""><div class="design_three"></div></a>
              <a href =""><div class="design_four"></div></a>
              <a href =""><div class="design_five"></div></a>
            </div>  
          </div>
          <div class="software_pr">
            <span>소프트웨어 카테고리에서 인기있어요!</span>
            <button type="button">></button>
            <button type="button"><</button>
            
          </div>
          <div class="video_pr">
            <span>영상 카테고리에서 인기있어요!</span>
            <button type="button">></button>
            <button type="button"><</button>
          </div>
          <div class="computer_pr">
            <span>번역 카테고리에서 인기있어요!</span >
            <button type="button">></button>
            <button type="button"><</button>
          </div>
          <div class="commu_pr">
            <span>글쓰기 카테고리에서 인기있어요!</span>
            <button type="button">></button>
            <button type="button"><</button>
          </div>
        </div>
      </section>
      
    </div>
  </div>
  <!-- footer -->
  <jsp:include page="footer.jsp" /> 
</body>
</html>