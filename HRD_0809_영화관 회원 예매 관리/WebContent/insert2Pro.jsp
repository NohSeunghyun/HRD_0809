<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "dbconn.jsp"%>

<%
try {
	sql = "insert into movie_2 values (?, ?, ?, ?)";

	ps = conn.prepareStatement(sql);
	
	ps.setString(1, request.getParameter("me_id"));
	ps.setString(2, request.getParameter("me_pass"));
	ps.setString(3, request.getParameter("mo_name"));
	ps.setString(4, request.getParameter("rm_date"));
	
	ps.executeUpdate();
%>
<script>
	alert("영화 예매가 완료 되었습니다!");
	location = "insert2.jsp"; // 문제에 영화예매화면으로 가라고 하면 insert2.jsp 안적혀있기때문에 그냥 영화예매화면으로 돌아가게함
</script>
<%
} catch (Exception e) {
%>
<script>
	alert("영화 예매가 완료되지 않았습니다!");
	history.back();
</script>
<%
} finally {
	try {
		if (conn != null) conn.close();
		if (stmt != null) stmt.close();
		if (ps != null) ps.close();
		if (rs != null) rs.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>