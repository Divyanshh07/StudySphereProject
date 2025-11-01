<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>StudySphere - Python Course</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
  <!-- Top Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top shadow">
    <div class="container-fluid">
      <a class="navbar-brand fw-bold me-4 fs-4" href="#">StudySphere</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link fw-semibold" href="index.jsp">Home</a>
          </li>

          <!-- Courses Dropdown -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle fw-semibold active" href="#" id="coursesDropdown" role="button" data-bs-toggle="dropdown">
              Courses
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="java.jsp">Java</a></li>
              <li><a class="dropdown-item" href="html.jsp">HTML</a></li>
              <li><a class="dropdown-item" href="css.jsp">CSS</a></li>
              <li><a class="dropdown-item" href="javascript.jsp">JavaScript</a></li>
              <li><a class="dropdown-item active" href="python.jsp">Python</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="allcourses.jsp">All Courses</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link fw-semibold" href="about.jsp">About</a>
          </li>
        </ul>

        <!-- Search Bar -->
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search topics...">
          <button class="btn btn-light fw-semibold" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <div class="container-fluid" style="margin-top:80px;">
    <div class="row">
      <!-- Side Navbar -->
      <nav class="col-md-3 col-lg-2 d-md-block bg-white sidebar collapse position-fixed h-100 shadow-sm p-2">
        <div class="pt-3">
          <h6 class="px-3 fw-bold text-uppercase text-secondary small">Python Topics</h6>
          <div class="accordion" id="sidebarAccordion">
            
            <!-- Introduction Section -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#introCollapse">
                  Introduction
                </button>
              </h2>
              <div id="introCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatIsPython" class="nav-link">What is Python?</a></li>
                    <li><a href="#features" class="nav-link">Features</a></li>
                    <li><a href="#history" class="nav-link">History</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!-- Basics Section -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#basicsCollapse">
                  Basics
                </button>
              </h2>
              <div id="basicsCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#syntax" class="nav-link">Syntax</a></li>
                    <li><a href="#datatypes" class="nav-link">Data Types</a></li>
                    <li><a href="#variables" class="nav-link">Variables</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!-- Advanced Section -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#advCollapse">
                  Advanced
                </button>
              </h2>
              <div id="advCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#oop" class="nav-link">OOP Concepts</a></li>
                    <li><a href="#modules" class="nav-link">Modules</a></li>
                    <li><a href="#exceptions" class="nav-link">Exception Handling</a></li>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div>
      </nav>

      <!-- Content Area -->
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="margin-left:17%;">
        <h2 id="whatIsPython" class="mt-3 fs-3">What is Python?</h2>
        <p class="fs-6 text-muted">Python is a <span class="fw-semibold text-dark">high-level, interpreted, and general-purpose programming language</span>. It emphasizes code readability with its clean and simple syntax. Python is widely used in web development, data science, artificial intelligence, automation, and more.</p>

        <h2 id="features" class="mt-3 fs-3">Features of Python</h2>
        <ul class="fs-6 text-muted">
          <li><span class="fw-semibold text-dark">Easy to Learn</span> – Python has simple syntax similar to English.</li>
          <li><span class="fw-semibold text-dark">Interpreted</span> – Executes code line by line without compilation.</li>
          <li><span class="fw-semibold text-dark">Dynamically Typed</span> – No need to declare variable types explicitly.</li>
          <li><span class="fw-semibold text-dark">Extensive Libraries</span> – Supports thousands of modules for different domains.</li>
          <li><span class="fw-semibold text-dark">Cross-Platform</span> – Works on Windows, Linux, and macOS.</li>
        </ul>

        <h2 id="history" class="mt-3 fs-3">History of Python</h2>
        <p class="fs-6 text-muted">Python was created by <span class="fw-semibold text-dark">Guido van Rossum</span> and released in 1991. It was designed to make coding more enjoyable and readable. Over the years, Python has grown into one of the most popular languages worldwide, powering applications in AI, ML, and data science.</p>

        <h2 id="syntax" class="mt-3 fs-3">Basic Syntax</h2>
        <p class="fs-6 text-muted">A simple Python program looks like this:</p>
        <pre class="bg-dark text-light p-3 rounded">
print("Hello, World!")
        </pre>

        <h2 id="datatypes" class="mt-3 fs-3">Data Types</h2>
        <p class="fs-6 text-muted">Python supports multiple data types such as <b>int</b>, <b>float</b>, <b>string</b>, <b>boolean</b>, <b>list</b>, <b>tuple</b>, <b>set</b>, and <b>dictionary</b>.</p>

        <h2 id="variables" class="mt-3 fs-3">Variables</h2>
        <p class="fs-6 text-muted">Variables in Python are created automatically when you assign a value. Example:</p>
        <pre class="bg-dark text-light p-3 rounded">
age = 21
name = "Divyansh"
        </pre>

        <h2 id="oop" class="mt-3 fs-3">OOP Concepts</h2>
        <p class="fs-6 text-muted">Python supports <span class="fw-semibold text-dark">object-oriented programming</span> with classes, objects, inheritance, and polymorphism.</p>

        <h2 id="modules" class="mt-3 fs-3">Modules</h2>
        <p class="fs-6 text-muted">Modules in Python are files containing functions and classes. You can import them to organize and reuse code efficiently.</p>

        <h2 id="exceptions" class="mt-3 fs-3">Exception Handling</h2>
        <p class="fs-6 text-muted">Python uses <b>try-except</b> blocks to handle errors gracefully, preventing program crashes.</p>

        <br><br>
      </main>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
