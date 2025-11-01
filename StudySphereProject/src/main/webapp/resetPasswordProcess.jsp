<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Reset Password - StudySphere</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card shadow-lg border-0 rounded-4">
        <div class="card-body text-center">
          <%
            String email = request.getParameter("email");
            boolean emailExists = false;
            String token = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                  "jdbc:mysql://localhost:3306/studysphere", "root", "password");

                PreparedStatement ps = con.prepareStatement(
                  "SELECT * FROM users WHERE email=?");
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    emailExists = true;
                    // generate token
                    token = UUID.randomUUID().toString();

                    // save token to DB (new column reset_token in users table)
                    PreparedStatement ps2 = con.prepareStatement(
                      "UPDATE users SET reset_token=? WHERE email=?");
                    ps2.setString(1, token);
                    ps2.setString(2, email);
                    ps2.executeUpdate();
                    ps2.close();
                }

                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
                out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
            }

            if (emailExists) {
          %>
            <div class="alert alert-success rounded-3">
              ✅ A password reset link has been generated. <br>
              <strong>Simulated link:</strong><br>
              <a href="resetpassword.jsp?token=<%=token%>">Click here to reset password</a>
            </div>
          <% } else { %>
            <div class="alert alert-danger rounded-3">
              ❌ No account found with email <strong><%= email %></strong>
            </div>
            <a href="ForgetPass.jsp" class="btn btn-warning w-100 mt-3">Try Again</a>
          <% } %>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
