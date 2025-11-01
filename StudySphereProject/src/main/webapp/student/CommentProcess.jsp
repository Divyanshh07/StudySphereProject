<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%
    HttpSession sess = request.getSession(false);
    if(sess == null || sess.getAttribute("email") == null){
        response.sendRedirect("../login.jsp?msg=Please+login+first");
        return;
    }

    String email = request.getParameter("email");
    String comment = request.getParameter("comment");

    if(comment == null || comment.trim().isEmpty()){
        response.sendRedirect("Comment.jsp?email=" + email + "&msg=Comment+cannot+be+empty");
        return;
    }

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        String insert = "INSERT INTO comments(student_email, comment, sender, comment_date) VALUES (?, ?, ?, NOW())";
        ps = conn.prepareStatement(insert);
        ps.setString(1, email);
        ps.setString(2, comment);
        ps.setString(3, "Student");
        ps.executeUpdate();

        response.sendRedirect("Comment.jsp?email=" + email + "&msg=Comment+sent+successfully");
    } catch(Exception e){
        out.println("Error: " + e.getMessage());
    } finally {
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
