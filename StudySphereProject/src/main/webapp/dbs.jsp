<%@ page import="java.sql.*" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/studyspheredb";
    String dbUser = "root";
    String dbPass = "Mysql@07"; // your DB password
    Connection con = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(dbURL, dbUser, dbPass);
    } catch(Exception e) {
        out.println("Database Connection Error: " + e.getMessage());
    }
%>
