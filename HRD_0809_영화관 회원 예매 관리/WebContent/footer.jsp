<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 회원 예매 관리 프로그램</title>
</head>
<body>
	<footer>
		HRDKOREA Copyrightⓒ2019 All reserved
	</footer>
</body>
</html>
<%
try {
	if (conn != null) conn.close();
	if (stmt != null) stmt.close();
	if (ps != null) ps.close();
	if (rs != null) rs.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>