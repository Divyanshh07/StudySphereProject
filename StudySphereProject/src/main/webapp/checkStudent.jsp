<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");

    if(email == null || email.trim().isEmpty()){
        out.println("Email is required!");
        return;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        String query = "SELECT id FROM register WHERE email=?";
        ps = conn.prepareStatement(query);
        ps.setString(1, email);
        rs = ps.executeQuery();

        if(rs.next()){
            // Student exists → redirect to sell page
            response.sendRedirect("sellCourse.jsp?email=" + email);
        } else {
            // Student not found → redirect to login/signup page
            response.sendRedirect("login.jsp");
        }

    } catch(Exception e){
        out.println("Error: " + e.getMessage());
    } finally {
        if(rs != null) rs.close();
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
