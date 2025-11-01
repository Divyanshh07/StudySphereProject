<%@page import="conn.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email = request.getParameter("email");
String pass = request.getParameter("pass");    

// --- Admin Login (Hardcoded) ---
if(email.equals("divyansh7185@gmail.com") && pass.equals("Divyansh")){
    session = request.getSession();
    session.setAttribute("role","admin");
    session.setAttribute("email",email);
    response.sendRedirect("admin/Admindash.jsp");

} else {
    try {
        Connection dbs = Conn.getCon();
        String q = "select name,email from register where email=? and password=?";
        PreparedStatement ps = dbs.prepareStatement(q);
        ps.setString(1,email);
        ps.setString(2,pass);
        ResultSet set = ps.executeQuery();

        if(set.next()){
            String studentName = set.getString("name"); 

            session = request.getSession();
            session.setAttribute("role","student");
            session.setAttribute("email",email);
            session.setAttribute("username",studentName);

            response.sendRedirect("student/StudentHome.jsp");
        } else {
            response.sendRedirect("login.jsp?msg=invalid");
        }
    } catch(Exception e){
        e.printStackTrace();
    }
}
%>
