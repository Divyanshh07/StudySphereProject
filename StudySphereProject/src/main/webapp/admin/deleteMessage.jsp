<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");

    if(id != null && !id.isEmpty()) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb", "root", "Mysql@07");

            String sql = "DELETE FROM contact_messages WHERE id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ps.executeUpdate();

            response.sendRedirect("Messages.jsp?msg=deleted");
        } catch(Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if(ps != null) ps.close();
            if(conn != null) conn.close();
        }
    } else {
        response.sendRedirect("Messages.jsp?msg=invalid");
    }
%>
