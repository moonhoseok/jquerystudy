<%--/jquerystudy/src/main/webapp/20230427/login.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<%-- jstl : sql => db에 연결을 하여 결과를 얻을 수 있는 태그들의 모임 --%>

<%-- conn : db Connection객체  --%>   
<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
	url ="jdbc:mariadb://Localhost:3306/gdudb"
	user="gdu" password="1234" />
<%-- rs : select 결과를 저장  --%>	
<sql:query var="rs" dataSource="${conn }">
	select * from member where id=? and pass=?
	<sql:param>${param.id }</sql:param>
	<sql:param>${param.pass}</sql:param>
</sql:query>

<c:if test="${! empty rs.rows }">
	<h1>반갑습니다 ${rs.rows[0].name}님</h1>
</c:if>
<c:if test="${empty rs.rows }">
	<h1><font color="red">아이디 또는 비빌번호 틀림</font></h1>
</c:if>
