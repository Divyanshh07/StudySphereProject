<%@ page import="java.sql.*, java.util.*" %>
<%@ include file="dbs.jsp" %> <%-- DB connection file --%>

<%
    String email = request.getParameter("email");
    boolean found = false;

    try {
        PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE email=?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            found = true;

            // Generate token (UUID)
            String token = UUID.randomUUID().toString();

            // For demo → just show reset link on screen (instead of sending email)
            String resetLink = "resetpassword.jsp?token=" + token + "&email=" + email;

            session.setAttribute("resetToken", token);
            session.setAttribute("resetEmail", email);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Password Reset Link</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow-lg p-4 col-md-6 mx-auto text-center">
            <h2 class="text-success mb-3"><i class="bi bi-check-circle-fill"></i> Reset Link Generated Successfully</h2>
            <p class="lead">Hello, <strong><%= email %></strong></p>
            <p class="mb-4">We have generated a secure link to reset your password.  
            Please click the button below to continue.</p>

            <a href="<%= resetLink %>" class="btn btn-primary btn-lg mb-3">
                <i class="bi bi-key-fill"></i> Reset Password
            </a>

            <p class="text-muted small">
                If you didn’t request a password reset, you can safely ignore this message.  
                For security, this link is valid only for this session.
            </p>
        </div>
    </div>
</body>
</html>

<%
        } else {
            response.sendRedirect("forgetPass.jsp?msg=notfound");
        }
    } catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("forgetPass.jsp?msg=error");
    }
%>
