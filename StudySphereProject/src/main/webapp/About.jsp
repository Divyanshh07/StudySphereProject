<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us - StudySphere</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      line-height: 1.7;
    }
    .hero {
      background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('images/about-bg.jpg') center/cover no-repeat;
      color: white;
      padding: 100px 20px;
      text-align: center;
    }
    .feature-icon {
      font-size: 2.2rem;
      color: #0d6efd;
    }
    .team-card img {
      border-radius: 50%;
      width: 120px;
      height: 120px;
      object-fit: cover;
      margin: auto;
    }
    .team-card {
      transition: transform 0.3s, box-shadow 0.3s;
    }
    .team-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
    }
    /* ✅ About image adjustment */
    .about-img {
      max-width: 80%;
      height: 500px;
      display: block;
      margin: 0 auto;
      object-fit: cover;
    }
    /* ✅ Text styling */
    .section-text {
      font-size: 1.05rem;
      color: #444;
    }
    .card-custom {
      border: none;
      box-shadow: 0 4px 16px rgba(0,0,0,0.08);
      transition: all 0.3s ease-in-out;
      border-radius: 12px;
      height: 100%;
    }
    .card-custom:hover {
      transform: translateY(-6px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
    }
  </style>
</head>
<body>

<%@ include file="nav.jsp" %>

  <!-- Hero Section -->
  <section class="hero">
    <div class="container">
      <h1 class="display-4 fw-bold">About StudySphere</h1>
      <p class="lead">Empowering learners with knowledge, technology, and community.</p>
    </div>
  </section>

<!-- Who We Are -->
<section class="py-5">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6 mb-4 text-center">
        <img src="images/about.jpg" class="about-img rounded shadow" alt="StudySphere Team">
      </div>
      <div class="col-md-6">
        <h2 class="fw-bold">Who We Are</h2>
        <p>
          At <strong>StudySphere</strong>, we believe that learning should be simple, accessible, and inspiring.  
          Our platform brings together <strong>students, tutors, and professionals</strong> to create a community where knowledge flows freely and learning never stops.
        </p>
        <p>
          With structured courses, personalized guidance, and smart learning tools, we go beyond traditional education to make 
          <em>every learning journey effective and enjoyable</em>. Whether you are preparing for exams, mastering new skills, or 
          exploring career opportunities, StudySphere is here to guide you every step of the way.
        </p>
        <p>
          Founded with a vision to <strong>bridge the gap between education and opportunity</strong>, 
          we are committed to empowering learners and shaping the future of online education.
        </p>
      </div>
    </div>
  </div>
</section>


  <!-- Mission & Vision -->
  <section class="bg-light py-5">
    <div class="container text-center">
      <h2 class="fw-bold mb-4">Our Mission & Vision</h2>
      <div class="row g-4">
        <div class="col-md-6">
          <div class="card shadow-sm border-0 h-100">
            <div class="card-body">
              <i class="bi bi-bullseye feature-icon"></i>
              <h5 class="fw-bold mt-3">Our Mission</h5>
              <p class="section-text">To empower learners by providing high-quality resources and building a community-driven learning ecosystem.</p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card shadow-sm border-0 h-100">
            <div class="card-body">
              <i class="bi bi-lightbulb feature-icon"></i>
              <h5 class="fw-bold mt-3">Our Vision</h5>
              <p class="section-text">To become the go-to platform for online learning, bridging the gap between knowledge seekers and experts worldwide.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Why Choose Us -->
  <section class="py-5">
    <div class="container text-center">
      <h2 class="fw-bold mb-4">Why Choose StudySphere?</h2>
      <div class="row g-4">
        <div class="col-md-4">
          <div class="card card-custom p-4">
            <i class="bi bi-laptop feature-icon"></i>
            <h5 class="fw-bold mt-3">Interactive Tutorials</h5>
            <p class="section-text">Learn with easy-to-follow tutorials, real-world examples, and step-by-step guidance to boost your learning journey.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-custom p-4">
            <i class="bi bi-people feature-icon"></i>
            <h5 class="fw-bold mt-3">Expert Tutors</h5>
            <p class="section-text">Get guidance from experienced educators and industry professionals who ensure you gain practical skills and knowledge.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-custom p-4">
            <i class="bi bi-chat-dots feature-icon"></i>
            <h5 class="fw-bold mt-3">Community Support</h5>
            <p class="section-text">Engage in discussions, solve doubts instantly with our AI chatbot, and grow with a supportive community of learners.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Meet Our Team -->
  <section class="bg-light py-5">
    <div class="container text-center">
      <h2 class="fw-bold mb-5">Meet Our Team</h2>
      <div class="row g-4 justify-content-center">
        <div class="col-md-3">
          <div class="card team-card p-3">
            <img src="images/divyansh.jpg" alt="Team Member">
            <h6 class="fw-bold mt-3">Divyansh</h6>
            <p class="text-muted">Founder & CEO</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card team-card p-3">
            <img src="images/team2.jpg" alt="Team Member">
            <h6 class="fw-bold mt-3">Ashish Kumar</h6>
            <p class="text-muted">Content Head</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card team-card p-3">
            <img src="images/shivam.jpg" alt="Team Member">
            <h6 class="fw-bold mt-3">Shivam Saini</h6>
            <p class="text-muted">Tech Lead</p>
          </div>
        </div>
       </div>
    </div>
  </section>


  <%@ include file="footer.jsp" %>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
