<%@ page import="java.sql.*" %>
<%@ include file="dbs.jsp" %>
<%
    int totalUsers = 0, totalCourses = 0, totalBlogs = 0, totalPurchases = 0;
    try {
        Statement stmt = con.createStatement();

        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS count FROM register");
        if(rs.next()) totalUsers = rs.getInt("count");
        rs.close();

        rs = stmt.executeQuery("SELECT COUNT(*) AS count FROM courses");
        if(rs.next()) totalCourses = rs.getInt("count");
        rs.close();

        rs = stmt.executeQuery("SELECT COUNT(*) AS count FROM blogs");
        if(rs.next()) totalBlogs = rs.getInt("count");
        rs.close();

        rs = stmt.executeQuery("SELECT COUNT(*) AS count FROM student_courses");
        if(rs.next()) totalPurchases = rs.getInt("count");
        rs.close();

        stmt.close();
    } catch(Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<style>
body { margin:0; padding:0; display:flex; }
.sidebar { width:250px; height:100vh; background:#343a40; color:white; position:fixed; }
.sidebar .nav-link { color:#adb5bd; padding:12px 20px; transition:0.3s; }
.sidebar .nav-link:hover, .sidebar .nav-link.active { background:#495057; color:white; }
.sidebar .nav-link i { margin-right:10px; }
.content { margin-left:250px; padding:20px; width:100%; background:#f8f9fa; min-height:100vh;}
.card { border-radius:12px; text-align:center; }
.card i { font-size:2rem; margin-bottom:10px; }
</style>
</head>
<body>

<div class="sidebar d-flex flex-column p-3">
  <h4 class="text-white text-center mb-4">Admin Panel</h4>
  <ul class="nav nav-pills flex-column mb-auto">
    <li><a href="dashboard.jsp" class="nav-link active"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
    <li><a href="manageUsers.jsp" class="nav-link"><i class="bi bi-people"></i> Manage Users</a></li>
    <li><a href="Courses.jsp" class="nav-link"><i class="bi bi-building"></i> Manage Courses</a></li>
    <li><a href="Messages.jsp" class="nav-link"><i class="bi bi-bar-chart"></i> User Messages</a></li>
    <li><a href="manageBlogs.jsp" class="nav-link"><i class="bi bi-gear"></i> Manage Blogs</a></li>
    <li><a href="studentPurchases.jsp" class="nav-link"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
    <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
  </ul>
</div>

<div class="content">
  <h2>Dashboard</h2>
  <p>Welcome to your Admin Dashboard. Here you can see an overview of system activity.</p>

  <!-- Cards Section -->
  <div class="row mt-4 g-4">
    <div class="col-md-3">
      <div class="card text-bg-primary p-3">
        <i class="bi bi-people-fill"></i>
        <h5 class="card-title mt-2">Users</h5>
        <p class="card-text fs-4"><%= totalUsers %></p>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card text-bg-success p-3">
        <i class="bi bi-journal-bookmark-fill"></i>
        <h5 class="card-title mt-2">Courses</h5>
        <p class="card-text fs-4"><%= totalCourses %></p>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card text-bg-warning p-3">
        <i class="bi bi-journal-bookmark-fill"></i>
        <h5 class="card-title mt-2">Blogs</h5>
        <p class="card-text fs-4"><%= totalBlogs %></p>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card text-bg-info p-3">
        <i class="bi bi-journal-bookmark-fill"></i>
        <h5 class="card-title mt-2">Course Purchases</h5>
        <p class="card-text fs-4"><%= totalPurchases %></p>
      </div>
    </div>
  </div>

  <!-- Chart Section -->
  <div class="row mt-5">
    <div class="col-md-12">
      <div class="card p-3">
        <h5 class="card-title">Website Overview</h5>
        <canvas id="overviewChart" height="100"></canvas>
      </div>
    </div>
  </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
const ctx = document.getElementById('overviewChart').getContext('2d');
const overviewChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Users', 'Courses', 'Blogs', 'Course Purchases'],
        datasets: [{
            label: 'Total Count',
            data: [<%= totalUsers %>, <%= totalCourses %>, <%= totalBlogs %>, <%= totalPurchases %>],
            backgroundColor: [
                'rgba(0, 123, 255, 0.7)',
                'rgba(40, 167, 69, 0.7)',
                'rgba(255, 193, 7, 0.7)',
                'rgba(23, 162, 184, 0.7)'
            ],
            borderColor: [
                'rgba(0, 123, 255, 1)',
                'rgba(40, 167, 69, 1)',
                'rgba(255, 193, 7, 1)',
                'rgba(23, 162, 184, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { display: false },
            title: {
                display: true,
                text: 'StudySphere Overview',
                font: { size: 18 }
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                ticks: { stepSize: 1 }
            }
        }
    }
});
</script>

</body>
</html>
