<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    if(id != null && !id.trim().isEmpty()){
        Connection conn = null;
        PreparedStatement ps = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
            ps = conn.prepareStatement("DELETE FROM blogs WHERE id=?");
            ps.setInt(1,Integer.parseInt(id));
            ps.executeUpdate();
            response.sendRedirect("manageBlogs.jsp");
        } catch(Exception e){
            out.println("Error: "+e.getMessage());
        } finally {
            // Close resources
            try {
                if(ps != null) ps.close();
            } catch(Exception e) { }
            try {
                if(conn != null) conn.close();
            } catch(Exception e) { }
        }
    } else {
        response.sendRedirect("manageBlogs.jsp");
    }
%>
