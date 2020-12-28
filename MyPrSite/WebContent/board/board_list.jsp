<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*, java.util.*" %>
<%
	String user_id = (String)session.getAttribute("id");
	TableDAO dao = new TableDAO();
	
	//1. 선택한 페이지값
	String rpage = request.getParameter("rpage");
	ArrayList<TableVO> all = dao.getList();
		
	//2. 페이지값에 따라서 start, end count 구하기
	int start = 0;
	int end = 0;
	int pageSize = 10;
	int totPage = 1;
	int dbCount = dao.getCount();
	int reqPage = 1;
		
	//2-2. 전체 페이지 수 구하기
	if((dbCount % pageSize) == 0){
		totPage = dbCount/pageSize;
	}else{
		totPage = (dbCount/pageSize)+1;
	}
		
	//2-3. start, end 값 구하기
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1)*pageSize+1;
		end = reqPage*pageSize;
	}else{
		start = reqPage;
		end = pageSize;
	}
	
	ArrayList<TableVO> list = dao.getList(start, end);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/am-pagination.css">
<script src="http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyCGV/js/am-pagination.js"></script>
<script>
	$(document).ready(function(){
		var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,
			totals : '<%= dbCount %>',
			pageSize : '<%= pageSize %>',
			page : '<%= reqPage %>',
			
			lastText : '&raquo;&raquo;',
			firstText : '&laquo;&laquo;',
			prevText : '&laquo;',
			nextText : '&raquo;',
			
			btnSize : 'sm'
		});
		
		jQuery("#ampaginationsm").on('am.pagination.change', function(e){
			$(location).attr('href', 'http://localhost:9000/MyPrSite/board/board_list.jsp?rpage='+e.page);
		});
		
		$("#search_btn").click(function(){
			if($("#svalue").val() == "" && $("#sname").val() != "all"){
				alert("검색할 데이터를 입력해 주세요");
				$("#svalue").focus();
				return false;
			}else{
				var sname = $("#sname").val();
				var svalue = $("#svalue").val();
			}
		});
		
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<section class="board" id="board_list">
		<div>
			<select id="sname">
				<option value="all">전체</option>
				<option value="btitle">제목</option>
				<option value="bcontent">내용</option>
				<option value="user_id">아이디</option>
				<option value="name">작성자</option>
			</select>
			<input type="text" id="svalue" placeholder="검색할 단어를 입력해주세요 :)">
			<button type="button" id="search_btn" class="btn_style">검색</button>
		</div>
		<table border=1>
			<tr>
				<td colspan="2"><span id="list_count">게시글 <%= all.size() %>개</span></td>
				<td colspan="3">
					<% if(user_id != null){  %>
						<a href="board_write.jsp"><button type="button" id="btn_write" class="btn_style">글쓰기</button></a>
					<% } %>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<% for(TableVO vo : list){ %>
			<tr>
				<td><%= vo.getRno() %></td>
				<td><a href="board_content.jsp?bid=<%= vo.getBid() %>"><%= vo.getBtitle() %></a></td>
				<td><%= vo.getName() %></td>
				<td><%= vo.getBdate() %></td>
				<td><%= vo.getBhits() %></td>
			</tr>
			<% } %>
			<tr>
				<td colspan="5"><div id="ampaginationsm"></div></td>
			</tr>
		</table>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>