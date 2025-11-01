<%@ page import="java.sql.*" %>
<%@ include file="dbs.jsp" %>

<%
    String token = request.getParameter("token");
    String email = request.getParameter("email");

    String sessionToken = (String) session.getAttribute("resetToken");
    String sessionEmail = (String) session.getAttribute("resetEmail");

    boolean valid = token != null && email != null && token.equals(sessionToken) && email.equals(sessionEmail);

    String message = null;
    String messageType = "danger";

    if ("POST".equalsIgnoreCase(request.getMethod()) && valid) {
        String newPass = request.getParameter("password");

        if (newPass != null && !newPass.trim().isEmpty()) {
            try {
                PreparedStatement ps = con.prepareStatement("UPDATE register SET password=? WHERE email=?");
                ps.setString(1, newPass);
                ps.setString(2, email);
                int updated = ps.executeUpdate();

                if (updated > 0) {
                    message = "Password updated successfully. You can login now.";
                    messageType = "success";
                    session.removeAttribute("resetToken");
                    session.removeAttribute("resetEmail");
                } else {
                    message = "Error updating password. Please try again.";
                }
            } catch (Exception e) {
                e.printStackTrace();
                message = "An error occurred. Please try again.";
            }
        } else {
            message = "Password cannot be empty.";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4 col-md-6 mx-auto">
            <h3 class="text-center mb-4">Reset Password</h3>

            <% if (message != null) { %>
                <div class="alert alert-<%= messageType %> text-center"><%= message %></div>
                <% if ("success".equals(messageType)) { %>
                    <div class="text-center">
                        <a href="login.jsp" class="btn btn-primary">Login Now</a>
                    </div>
                <% } %>
            <% } %>

            <% if (valid && !"success".equals(messageType)) { %>
                <form method="post">
                    <div class="mb-3">
                        <label>New Password</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-success w-100">Update Password</button>
                </form>
            <% } else if (!valid) { %>
                <div class="alert alert-danger text-center">Invalid or expired link</div>
            <% } %>
        </div>
    </div>
</body>
</html>
