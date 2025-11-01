<%@ page import="java.sql.*" %>
<%@ page import="conn.Conn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html");

// Get parameters
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "UPDATE register SET name=?, email=?, password=? WHERE id=?";
    PreparedStatement ps = dbs.prepareStatement(q); 
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, password);
    ps.setString(4, id);

    i = ps.executeUpdate();
    dbs.close();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("manageUsers.jsp?msg=success");
} else {
    response.sendRedirect("Update.jsp?msg=fail");
}
%>

</body>
</html>
