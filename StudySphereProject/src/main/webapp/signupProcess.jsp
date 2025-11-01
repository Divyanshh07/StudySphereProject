<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conn.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

int i = 0;

Connection db = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    db = Conn.getCon();

    // ✅ Check if email already exists in registration table
    String checkQuery = "SELECT COUNT(*) FROM register WHERE email=?";
    ps = db.prepareStatement(checkQuery);
    ps.setString(1, email);
    rs = ps.executeQuery();
    rs.next();
    int countRow = rs.getInt(1);

    if (countRow > 0) {
        // Email already exists
        response.sendRedirect("signup.jsp?msg=invalid");
    } else {
        // Insert new record
        String insertQuery = "INSERT INTO register(name,email,password) VALUES (?,?,?)";
        ps.close(); 
        ps = db.prepareStatement(insertQuery);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
      

        i = ps.executeUpdate();

        if (i > 0) {
            response.sendRedirect("login.jsp?msg=success");
        } else {
            response.sendRedirect("signup.jsp?msg=notexits");
        }
    }
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("signup.jsp?msg=error");
} finally {
    // ✅ Close resources
    if (rs != null) try { rs.close(); } catch (Exception ex) {}
    if (ps != null) try { ps.close(); } catch (Exception ex) {}
    if (db != null) try { db.close(); } catch (Exception ex) {}
}
%>
</body>
</html>
