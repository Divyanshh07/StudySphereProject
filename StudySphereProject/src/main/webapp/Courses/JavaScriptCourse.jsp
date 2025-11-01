<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>StudySphere - JavaScript Course</title>
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
            <a class="nav-link active fw-semibold" href="#">Home</a>
          </li>

          <!-- Courses Dropdown -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle fw-semibold" href="#" id="coursesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Courses
            </a>
            <ul class="dropdown-menu" aria-labelledby="coursesDropdown">
              <li><a class="dropdown-item" href="java.jsp">Java</a></li>
              <li><a class="dropdown-item" href="html.jsp">HTML</a></li>
              <li><a class="dropdown-item" href="css.jsp">CSS</a></li>
              <li><a class="dropdown-item" href="javascript.jsp">JavaScript</a></li>
              <li><a class="dropdown-item" href="python.jsp">Python</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="allcourses.jsp">All Courses</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link fw-semibold" href="#">About</a>
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
          <h6 class="px-3 fw-bold text-uppercase text-secondary small">JavaScript Topics</h6>
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
                    <li><a href="#whatIsJS" class="nav-link">What is JavaScript?</a></li>
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
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#advancedCollapse">
                  Advanced
                </button>
              </h2>
              <div id="advancedCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#functions" class="nav-link">Functions</a></li>
                    <li><a href="#objects" class="nav-link">Objects</a></li>
                    <li><a href="#events" class="nav-link">Events</a></li>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div>
      </nav>

      <!-- Content Area -->
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="margin-left:17%;">
        <h2 id="whatIsJS" class="mt-3 fs-3">What is JavaScript?</h2>
        <p class="fs-6 text-muted">
          JavaScript is a <span class="fw-semibold text-dark">lightweight, interpreted programming language</span> primarily used to create interactive effects in web browsers. It works alongside HTML and CSS to build modern, dynamic web applications.
        </p>

        <h2 id="features" class="mt-3 fs-3">Features of JavaScript</h2>
        <ul class="fs-6 text-muted">
          <li><span class="fw-semibold text-dark">Lightweight & Fast</span> – Runs directly in browsers without compilation.</li>
          <li><span class="fw-semibold text-dark">Dynamic</span> – Variables and objects can change during runtime.</li>
          <li><span class="fw-semibold text-dark">Event-Driven</span> – Responds to user interactions like clicks and keypresses.</li>
          <li><span class="fw-semibold text-dark">Cross-Platform</span> – Works on all major browsers and devices.</li>
          <li><span class="fw-semibold text-dark">Versatile</span> – Used for frontend, backend (Node.js), and mobile development.</li>
        </ul>

        <h2 id="history" class="mt-3 fs-3">History of JavaScript</h2>
        <p class="fs-6 text-muted">
          JavaScript was developed by <span class="fw-semibold text-dark">Brendan Eich</span> in 1995 while working at Netscape. Originally called Mocha, then LiveScript, it was later renamed JavaScript. Today, it is one of the core technologies of the web alongside HTML and CSS.
        </p>

        <h2 id="syntax" class="mt-3 fs-3">Basic Syntax</h2>
        <p class="fs-6 text-muted">A simple JavaScript example:</p>
        <pre class="bg-dark text-light p-3 rounded">
&lt;script&gt;
  console.log("Hello, World!");
&lt;/script&gt;
        </pre>

        <h2 id="datatypes" class="mt-3 fs-3">Data Types</h2>
        <p class="fs-6 text-muted">
          JavaScript supports primitive types such as <b>string</b>, <b>number</b>, <b>boolean</b>, <b>null</b>, <b>undefined</b>, and <b>symbol</b>, as well as reference types like objects and arrays.
        </p>

        <h2 id="variables" class="mt-3 fs-3">Variables</h2>
        <p class="fs-6 text-muted">
          Variables in JavaScript are declared using <code>var</code>, <code>let</code>, or <code>const</code>. Example:
        </p>
        <pre class="bg-dark text-light p-3 rounded">
let age = 21;
const name = "Divyansh";
        </pre>

        <h2 id="functions" class="mt-3 fs-3">Functions</h2>
        <p class="fs-6 text-muted">
          Functions are reusable blocks of code. Example:
        </p>
        <pre class="bg-dark text-light p-3 rounded">
function greet(name) {
  return "Hello, " + name;
}
console.log(greet("World"));
        </pre>

        <h2 id="objects" class="mt-3 fs-3">Objects</h2>
        <p class="fs-6 text-muted">
          Objects are collections of key-value pairs. Example:
        </p>
        <pre class="bg-dark text-light p-3 rounded">
let student = {
  name: "Divyansh",
  age: 21,
  course: "JavaScript"
};
console.log(student.name);
        </pre>

        <h2 id="events" class="mt-3 fs-3">Events</h2>
        <p class="fs-6 text-muted">
          JavaScript can respond to user actions like clicks:
        </p>
        <pre class="bg-dark text-light p-3 rounded">
&lt;button onclick="alert('Hello!')"&gt;Click Me&lt;/button&gt;
        </pre>

        <br><br>
      </main>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
