<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
/* 파일 업로드를 위해서 cos.jar 라이브러리를 통해서 MultipartRequest 클래스 객체를 생성 */
/* 5*1024*1024 : 1byte가 기본 크기이므로 1*5*1024*1024가 되어서 최대 5메가 바이트가 됨 */
/* new DefaultFileRenamePolicy() : 기존 동일한 이름의 파일이 있을 경우 새이름으로 파일을 저장 */
	MultipartRequest multi = new MultipartRequest(request,"D:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	Enumeration params = multi.getParameterNames();
	
	while (params.hasMoreElements()) {
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
	}
	
	out.println("----------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()){
		/* 현재 위치 다음의 파일 이름을 불러옴 */
		String name = (String) files.nextElement();
		/* getFilesystemName : 사용자가 지정하는 파일 이름 */
		String filename = multi.getFilesystemName(name);
		/* getOriginalFileName : 실제로 업로드된 파일 이름 */
		String original = multi.getOriginalFileName(name);
		/* 파일 유형 확인 */
		String type = multi.getContentType(name);
		/* 실제로 업로드된 파일 */
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if (file != null) {
			out.println(" 파일 크기 : " + file.length());
			out.println("<br>");
		}
	}
%>