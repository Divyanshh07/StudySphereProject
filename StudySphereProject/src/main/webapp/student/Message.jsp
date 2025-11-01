<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact - StudySphere</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #e3f2fd, #f4f6f9);
    font-family: 'Segoe UI', sans-serif;
    margin: 0;
    padding: 0;
}

/* Navbar styling */
.navbar {
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}
.navbar-brand {
    font-weight: 700;
    font-size: 1.5rem;
}

/* Section styling */
section {
    padding: 4rem 0;
}

/* Card styling */
.card {
    border-radius: 1rem;
    box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.1);
    transition: transform 0.3s, box-shadow 0.3s;
}
.card:hover {
    transform: translateY(-3px);
    box-shadow: 0 0.8rem 1.5rem rgba(0,0,0,0.12);
}

/* Contact form inputs */
.contact-card input.form-control,
.contact-card textarea.form-control {
    border-radius: 0.5rem;
    border: 1px solid #ced4da;
    padding: 0.7rem 1rem;
    transition: 0.3s;
}
.contact-card input.form-control:focus,
.contact-card textarea.form-control:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 6px rgba(13,110,253,0.2);
}

/* Buttons */
.btn-primary {
    border-radius: 0.5rem;
    transition: 0.3s;
}
.btn-primary:hover {
    background-color: #0b5ed7;
    transform: translateY(-1px);
}

/* Back to Dashboard button */
.btn-back {
    margin-bottom: 1.5rem;
    color: white;
    border: none;
    border-radius: 0.5rem;
    transition: 0.3s;
}

/* Headings */
h4.fw-bold {
    font-size: 1.5rem;
}

/* Responsive adjustments */
@media (max-width: 992px) {
    section { padding: 3rem 1rem; }
    h4.fw-bold { font-size: 1.3rem; }
}
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="StudentHome.jsp">StudySphere</a>
    <div class="ms-auto d-flex align-items-center text-white">
      <i class="bi bi-person-circle me-1"></i> Welcome 
      <a href="Logout.jsp" class="btn btn-sm btn-light ms-3">Logout</a>
    </div>
  </div>
</nav>

<!-- Contact Section -->
<section>
  <div class="container">
    <div class="row justify-content-center">

      <div class="col-lg-8"> <!-- Increased width -->

    <!-- Back to Dashboard -->
    <a href="StudentHome.jsp" class="btn btn-secondary btn-sm btn-back">
        <i class="bi bi-house-door-fill me-1"></i> Back to Dashboard
    </a>

        <!-- Contact Form Card -->
        <div class="card shadow-sm border-0 rounded-4 p-5 contact-card bg-white">
          <h4 class="fw-bold mb-4 text-primary">
            <i class="bi bi-envelope-fill me-2"></i>Send Us a Message
          </h4>
          <form method="post" action="contactProcess.jsp" class="row g-3">
            
            <div class="col-md-6">
              <label class="form-label fw-semibold">Full Name</label>
              <input type="text" name="name" class="form-control form-control-lg" placeholder="Your Name" required>
            </div>
            
            <div class="col-md-6">
              <label class="form-label fw-semibold">Email</label>
              <input type="email" name="email" class="form-control form-control-lg" placeholder="name@example.com" required>
            </div>
            
            <div class="col-12">
              <label class="form-label fw-semibold">Subject</label>
              <input type="text" name="subject" class="form-control form-control-lg" placeholder="Message Subject" required>
            </div>
            
            <div class="col-12">
              <label class="form-label fw-semibold">Message</label>
              <textarea name="message" class="form-control form-control-lg" rows="5" placeholder="Write your message here..." required></textarea>
            </div>
            
            <div class="col-12 text-end">
              <button type="submit" class="btn btn-primary btn-lg">
                <i class="bi bi-send-fill me-1"></i> Send Message
              </button>
            </div>
            
          </form>
        </div>

      </div>
    </div>
  </div>
</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
