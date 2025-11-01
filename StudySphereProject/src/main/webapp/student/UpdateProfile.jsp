

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
  body {
    margin: 0;
    padding: 0;
    display: flex;
  }
  .content {
    margin-left: 50px;
    padding: 20px;
    width: 100%;
  }
</style>

</head>
<body>


<!-- Main Content -->
<div class="content">

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-lg border-0 rounded-4">
        <div class="card-header bg-primary text-white text-center rounded-top-4">
          <h3>Update the User</h3>
        </div>
        <div class="card-body">
          <form action="UpdateProcess.jsp" method="post">

            <!-- Full Name & Email -->
            <div class="row mb-3">
            <div class="col-md-6">
                <label for="id" class="form-label">Id</label>
                <input type="id" name="id" class="form-control" id="id" placeholder="Enter Id" required>
              </div>
              <div class="col-md-6">
                <label for="fullname" class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control" id="fullname" placeholder="Enter full name" required>
              </div>
              <div class="col-md-6">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" required>
              </div>
            </div>

            <!-- Password & Phone -->
            <div class="row mb-3">
              <div class="col-md-6">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
              </div>
              

            <!-- Checkbox -->
            <div class="form-check mb-4">
              <input class="form-check-input" type="checkbox" id="agree" required>
              <label class="form-check-label" for="agree">
                I confirm that the above information is correct
              </label>
            </div>

            <!-- Buttons -->
            <div class="d-flex justify-content-center gap-3">
              <button type="submit" class="btn btn-success px-4">
                <i class="bi bi-person-update"></i> Update
              </button>
              <button type="reset" class="btn btn-secondary px-4">
                <i class="bi bi-arrow-counterclockwise"></i> Reset
              </button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>