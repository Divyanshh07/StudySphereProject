<%@ page import="java.sql.*" %>
<%@ page import="conn.Conn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow border-0 rounded-4">
                <div class="card-body text-center">

                    <%
                        String id = request.getParameter("id"); // user ID from query string

                        if (id != null && !id.isEmpty()) {
                            try {
                                Connection dbs = Conn.getCon();
                                PreparedStatement ps = dbs.prepareStatement("DELETE FROM signup WHERE id=?");
                                ps.setInt(1, Integer.parseInt(id));

                                int rows = ps.executeUpdate();
                                ps.close();
                                dbs.close();

                                if (rows > 0) {
                                    out.println("<div class='alert alert-success'>User deleted successfully!</div>");
                                } else {
                                    out.println("<div class='alert alert-warning'>No user found with ID " + id + ".</div>");
                                }
                            } catch (Exception e) {
                                out.println("<div class='alert alert-danger'>Error deleting user: " + e.getMessage() + "</div>");
                            }
                        } else {
                            out.println("<div class='alert alert-info'>No user ID provided.</div>");
                        }
                    %>

                    <a href="manageUsers.jsp" class="btn btn-primary mt-3">Back to Manage Users</a>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
