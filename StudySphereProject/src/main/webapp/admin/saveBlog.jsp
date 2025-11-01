<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String content = request.getParameter("content");
    String publish_date = request.getParameter("publish_date");

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        String sql = "INSERT INTO blogs (title, author, content, publish_date) VALUES (?, ?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, title);
        ps.setString(2, author);
        ps.setString(3, content);
        ps.setString(4, publish_date);
        ps.executeUpdate();

        response.sendRedirect("manageBlogs.jsp");
    } catch(Exception e){
        out.println("Error: "+e.getMessage());
    } finally {
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
