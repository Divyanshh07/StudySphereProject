<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String courseId = request.getParameter("course_id");
    if(courseId == null){
        response.sendRedirect("courses.jsp");
        return;
    }

    // For simplicity, assume user is logged in and user_id = 1
    int userId = 1;

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        // Check if already enrolled
        PreparedStatement check = con.prepareStatement("SELECT * FROM user_courses WHERE user_id=? AND course_id=?");
        check.setInt(1,userId);
        check.setInt(2,Integer.parseInt(courseId));
        ResultSet rs = check.executeQuery();
        if(rs.next()){
            out.println("<p class='alert alert-info text-center'>You are already enrolled in this course.</p>");
        } else {
            // Insert enrollment
            PreparedStatement ps = con.prepareStatement("INSERT INTO user_courses(user_id, course_id, enrolled_on) VALUES(?,?,NOW())");
            ps.setInt(1,userId);
            ps.setInt(2,Integer.parseInt(courseId));
            ps.executeUpdate();
            
            // For paid course, simulate payment success
            out.println("<p class='alert alert-success text-center'>✅ Enrollment successful!</p>");
            out.println("<p class='text-center'><a href='MyCourses.jsp' class='btn btn-primary'>Go to My Courses</a></p>");
        }

        con.close();
    }catch(Exception e){
        out.println("<p class='alert alert-danger'>Error: "+e.getMessage()+"</p>");
    }
%>
