<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb", "root", "Mysql@07");

        String sql = "INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, subject);
        ps.setString(4, message);

        int rows = ps.executeUpdate();
        if(rows > 0){
            out.println("<script>alert('Your message has been sent successfully!'); window.location='contact.jsp';</script>");
        } else {
            out.println("<script>alert('Something went wrong, please try again.'); window.location='contact.jsp';</script>");
        }
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
