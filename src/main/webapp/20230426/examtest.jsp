<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 0~99사이의 임의의 수 10개를 ,를 이용하여 출력하기 --%>
<%
	String result = "";
	for(int i = 1; i <= 10 ; i++){
		int num = (int)(Math.random()*100);
		result += num+((i==10)?"":",");
	}
	out.println(result);
%>