<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Footer Page</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css1/style.css">
</head>
<body>
<footer class="bg-dark text-light pt-5 pb-4">
  <div class="container">
    <div class="row">

      <!-- About Section -->
      <div class="col-lg-3 col-md-6 mb-4">
        <h5 class="fw-bold mb-3">About StudySphere</h5>
        <p class="small">
          StudySphere is your one-stop platform for learning programming, web development, and IT skills.
          We provide study materials, tutorials, and resources to help students and professionals grow.
        </p>
        <div class="d-flex gap-3">
          <a href="#" class="text-light" aria-label="Facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="text-light" aria-label="Instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="text-light" aria-label="Twitter"><i class="bi bi-twitter"></i></a>
          <a href="#" class="text-light" aria-label="LinkedIn"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>

      <!-- Quick Links -->
      <div class="col-lg-2 col-md-6 mb-4">
        <h5 class="fw-bold mb-3">Quick Links</h5>
        <ul class="list-unstyled small">
          <li><a href="home.jsp" class="text-decoration-none text-light">Home</a></li>
          <li><a href="courses.jsp" class="text-decoration-none text-light">Courses</a></li>
          <li><a href="home.jsp" class="text-decoration-none text-light">Study Material</a></li>
          <li><a href="contact.jsp" class="text-decoration-none text-light">Contact</a></li>
        </ul>
      </div>

      <!-- Resources -->
      <div class="col-lg-2 col-md-6 mb-4">
        <h5 class="fw-bold mb-3">Resources</h5>
        <ul class="list-unstyled small">
          <li><a href="tutorials.jsp" class="text-decoration-none text-light">Tutorials</a></li>
          <li><a href="notes.jsp" class="text-decoration-none text-light">Notes</a></li>
          <li><a href="assignments.jsp" class="text-decoration-none text-light">Assignments</a></li>
          <li><a href="practice.jsp" class="text-decoration-none text-light">Practice Questions</a></li>
        </ul>
      </div>

      <!-- Support -->
      <div class="col-lg-2 col-md-6 mb-4">
        <h5 class="fw-bold mb-3">Support</h5>
        <ul class="list-unstyled small">
          <li><a href="help.jsp" class="text-decoration-none text-light">Help Center</a></li>
          <li><a href="faq.jsp" class="text-decoration-none text-light">FAQs</a></li>
          <li><a href="terms.jsp" class="text-decoration-none text-light">Terms & Conditions</a></li>
          <li><a href="privacy.jsp" class="text-decoration-none text-light">Privacy Policy</a></li>
        </ul>
      </div>

      <!-- Contact -->
      <div class="col-lg-3 col-md-6 mb-4">
        <h5 class="fw-bold mb-3">Contact Us</h5>
        <p class="small mb-1"><i class="bi bi-geo-alt-fill me-2"></i> Noida, India</p>
        <p class="small mb-1"><i class="bi bi-envelope-fill me-2"></i> info@studysphere.com</p>
        <p class="small"><i class="bi bi-telephone-fill me-2"></i> +91 9634834846</p>
      </div>

    </div>

    <!-- Bottom -->
    <div class="row mt-4">
      <div class="col text-center">
        <hr class="border-light">
        <p class="small mb-0">
          &copy; <script>document.write(new Date().getFullYear());</script> StudySphere. 
          All Rights Reserved. | Designed with <i class="bi bi-heart-fill text-danger"></i>
        </p>
      </div>
    </div>
  </div>
</footer>
</body>
</html>
