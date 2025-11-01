<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Us - StudySphere</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .hero {
      background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), 
                  url('images/contact-bg.jpg') center/cover no-repeat;
      color: white;
      padding: 100px 20px;
      text-align: center;
    }
    .contact-card {
      border: none;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .info-icon {
      font-size: 1.5rem;
      color: #0d6efd;
      margin-right: 10px;
    }
    .form-control:focus {
      border-color: #0d6efd;
      box-shadow: 0 0 0 .2rem rgba(13,110,253,.25);
    }
  </style>
</head>
<body>

<%@ include file="nav.jsp" %>


  <!-- Hero Section -->
  <section class="hero">
    <div class="container">
      <h1 class="display-4 fw-bold">Contact Us</h1>
      <p class="lead">We’d love to hear from you. Reach out for any queries, feedback, or support.</p>
    </div>
  </section>

  <!-- Contact Section -->
  <section class="py-5">
    <div class="container">
      <div class="row g-5 align-items-start">

        <!-- Contact Form -->
        <div class="col-lg-7">
          <div class="card contact-card p-4">
            <h4 class="fw-bold mb-4"><i class="bi bi-envelope-fill me-2"></i>Send Us a Message</h4>
            <form method="post" action="contactProcess.jsp" class="row g-3">
              <div class="col-md-6">
                <label class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control" placeholder="Your Name" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="name@example.com" required>
              </div>
              <div class="col-12">
                <label class="form-label">Subject</label>
                <input type="text" name="subject" class="form-control" placeholder="Message Subject" required>
              </div>
              <div class="col-12">
                <label class="form-label">Message</label>
                <textarea name="message" class="form-control" rows="5" placeholder="Write your message here..." required></textarea>
              </div>
              <div class="col-12 text-end">
                <button type="submit" class="btn btn-primary">
                  <i class="bi bi-send-fill me-1"></i> Send Message
                </button>
              </div>
            </form>
          </div>
        </div>

        <!-- Contact Info -->
        <div class="col-lg-5">
          <div class="card contact-card p-4">
            <h4 class="fw-bold mb-4"><i class="bi bi-geo-alt-fill me-2"></i>Our Office</h4>
            <p><i class="bi bi-geo-alt-fill info-icon"></i> StudySphere Pvt. Ltd, Sector-15, Noida, India</p>
            
            <h4 class="fw-bold mt-4 mb-3"><i class="bi bi-telephone-fill me-2"></i>Call Us</h4>
            <p><i class="bi bi-telephone-fill info-icon"></i> +91 9634834846</p>
            
            <h4 class="fw-bold mt-4 mb-3"><i class="bi bi-envelope-fill me-2"></i>Email</h4>
            <p><i class="bi bi-envelope-fill info-icon"></i> support@studysphere.com</p>

            <h4 class="fw-bold mt-4 mb-3"><i class="bi bi-share me-2"></i>Follow Us</h4>
            <a href="#" class="btn btn-outline-primary btn-sm me-2"><i class="bi bi-facebook"></i></a>
            <a href="#" class="btn btn-outline-info btn-sm me-2"><i class="bi bi-twitter"></i></a>
            <a href="#" class="btn btn-outline-danger btn-sm me-2"><i class="bi bi-instagram"></i></a>
            <a href="#" class="btn btn-outline-dark btn-sm"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <section class="py-5 text-center bg-primary text-white">
    <div class="container">
      <h2 class="fw-bold">Need Help? We’re Here for You</h2>
      <p class="mb-4">Contact us anytime and we’ll get back to you as soon as possible.</p>
      <a href="signup.jsp" class="btn btn-light btn-lg">Join StudySphere</a>
    </div>
  </section>

  <%@ include file="footer.jsp" %>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
