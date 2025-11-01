<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4 col-md-6 mx-auto">
            <h3 class="text-center mb-4">Forgot Password</h3>
            <form action="forgetprocess.jsp" method="post">
                <div class="mb-3">
                    <label>Email Address</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Send Reset Link</button>
            </form>
            <%
                String msg = request.getParameter("msg");
                if("notfound".equals(msg)){
            %>
                <div class="alert alert-danger mt-3">Email not found!</div>
            <%
                } else if("sent".equals(msg)){
            %>
                <div class="alert alert-success mt-3">Reset link generated successfully (demo below).</div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
