<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.myprsite.vo.*"%>
<%  request.setCharacterEncoding("utf-8");   %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%-- <jsp:useBean id="vo" class="com.myprsite.vo.ProfileVO"/>
<jsp:setProperty  name="vo" property="*" /> --%>
<%
      String id=null;
      if(session.getAttribute("id") != null){
         id =(String) session.getAttribute("id");
         System.out.println(id);
      }
%>

<% 
//1. 파일이 저장되는 경로 설정 : upload폴더 주소
		String save_path = request.getServletContext().getRealPath("/upload");
		//System.out.println("path--->" + save_path);
    //2. 파일 업로드 사이즈 설정//(최대 15메가) 
		int max_size = 1024*1024*15;
    //3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장)
    // 객체 생성시 자동으로 upload 폴더에 파일이 업로드 됨
		MultipartRequest multi = new MultipartRequest(request, save_path, max_size, "utf-8",new DefaultFileRenamePolicy());
	 //4. VO 객체 생성
	
	String univercity,univercity_major;
	String certificate_name,certificate_date,certificate_agency;
	String company,department,position; 
	
	 
	
	 ProfileVO vo = new ProfileVO();
	 
	 vo.setFace_file(multi.getOriginalFileName("face_file"));
	 vo.setS_face_file(multi.getFilesystemName("face_file"));
	 
	 vo.setUnivercity_file(multi.getOriginalFileName("univercity_file"));
	 vo.setS_univercity_file(multi.getFilesystemName("univercity_file"));
	 
	 vo.setCertiticate_file(multi.getOriginalFileName("certificate_file"));
	 vo.setS_certiticate_file(multi.getFilesystemName("certificate_file"));
	 
	 vo.setCareer_file(multi.getOriginalFileName("career_file"));
	 vo.setS_career_file(multi.getFilesystemName("career_file"));
	 
	 vo.setUnivercity(multi.getParameter("univercity"));
	 vo.setUnivercity_major(multi.getParameter("univercity_major"));
	 
	 vo.setCertificate_name(multi.getParameter("certificate_name"));
	 vo.setCertificate_date(multi.getParameter("certificate_date"));
	 vo.setCertificate_agency(multi.getParameter("certificate_agency"));
	 
	 vo.setCompany(multi.getParameter("company"));
	 vo.setDepartment(multi.getParameter("department"));
	 vo.setPosition(multi.getParameter("position"));
	 
	 vo.setArea_select(multi.getParameter("area_select"));
	 vo.setIntroduce(multi.getParameter("introduce"));
	 vo.setJob_select_input_content(multi.getParameter("job_select_input_content"));
	 vo.setCategory_tech1_input_content(multi.getParameter("category_tech1_input_content"));
	 vo.setAttendance_status(multi.getParameter("attendance_status"));
	 vo.setCareer_year(multi.getParameter("career_year"));
	 vo.setCareer_month(multi.getParameter("career_month"));
	 
	 
	
	System.out.println(vo.getFace_file());
	System.out.println(vo.getS_face_file());
	System.out.println(vo.getUnivercity());
	System.out.println(vo.getUnivercity_major());
	System.out.println(vo.getUnivercity_file());
	System.out.println(vo.getS_univercity_file());
	System.out.println(vo.getCertificate_name());
	System.out.println(vo.getCertificate_date());
	System.out.println(vo.getCertificate_agency());
	System.out.println(vo.getCertiticate_file());
	System.out.println(vo.getS_certiticate_file());
	System.out.println(vo.getCompany());
	System.out.println(vo.getDepartment());
	System.out.println(vo.getPosition());
	System.out.println(vo.getCareer_file());
	System.out.println(vo.getS_career_file());
	
	
	System.out.println(vo.getArea_select());
	System.out.println(vo.getIntroduce());
	System.out.println(vo.getJob_select_input_content());
	System.out.println(vo.getCategory_tech1_input_content());
	System.out.println(vo.getAttendance_status());
	System.out.println(vo.getCareer_year());
	System.out.println(vo.getCareer_month());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>