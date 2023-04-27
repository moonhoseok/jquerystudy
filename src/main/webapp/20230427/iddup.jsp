<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--/jquerystudy/src/main/webapp/20230427/iddup.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
	url ="jdbc:mariadb://Localhost:3306/gdudb"
	user="gdu" password="1234" />
<sql:query var="rs" dataSource="${conn}">
	select * from member where id=?
	<sql:param>${param.id}</sql:param>
</sql:query>
<c:if test="${empty rs.rows }">
	<h1 id="result" class="notfind">사용 가능한 아이디입니다.</h1>
</c:if>
<c:if test="${! empty rs.rows }">
	<h1 id="result" class="find">사용 불가능한 아이디입니다.</h1>
</c:if>