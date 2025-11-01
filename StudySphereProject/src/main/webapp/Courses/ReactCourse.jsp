<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>StudySphere - Java Course</title>
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
            <a class="nav-link dropdown-toggle fw-semibold" href="#" id="coursesDropdown" role="button" data-bs-toggle="dropdown">
              Courses
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="java.jsp">Java</a></li>
              <li><a class="dropdown-item" href="html.jsp">HTML</a></li>
              <li><a class="dropdown-item" href="css.jsp">CSS</a></li>
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
          <h6 class="px-3 fw-bold text-uppercase text-secondary small">Java Topics</h6>
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
                    <li><a href="#whatIsJava" class="nav-link">What is Java?</a></li>
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

            <!-- OOP Section -->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#oopCollapse">
                  Object-Oriented
                </button>
              </h2>
              <div id="oopCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#classes" class="nav-link">Classes & Objects</a></li>
                    <li><a href="#inheritance" class="nav-link">Inheritance</a></li>
                    <li><a href="#polymorphism" class="nav-link">Polymorphism</a></li>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div>
      </nav>

      <!-- Content Area -->
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="margin-left:17%;">
        <h2 id="whatIsJava" class="mt-3 text-gray fs-3">What is Java?</h2>
        <p class="fs-6 text-muted">Java is a <span class="fw-semibold text-dark">high-level, class-based, object-oriented programming language</span> designed to have as few implementation dependencies as possible. It is widely used for building enterprise-scale applications, mobile apps (Android), web servers, and more.</p>

        <h2 id="features" class="mt-3 text-gray fs-3">Features of Java</h2>
        <ul class="fs-6 text-muted">
          <li><span class="fw-semibold text-dark">Platform Independent</span> – Write Once, Run Anywhere.</li>
          <li><span class="fw-semibold text-dark">Object-Oriented</span> – Supports concepts like inheritance, polymorphism, abstraction, encapsulation.</li>
          <li><span class="fw-semibold text-dark">Robust</span> – Strong memory management and exception handling.</li>
          <li><span class="fw-semibold text-dark">Secure</span> – Provides features like bytecode verification and runtime security checks.</li>
          <li><span class="fw-semibold text-dark">Multithreaded</span> – Supports concurrent execution of tasks.</li>
        </ul>

        <h2 id="history" class="mt-3 text-gray fs-3">History of Java</h2>
        <p class="fs-6 text-muted">Java was developed by <span class="fw-semibold text-dark">James Gosling</span> at Sun Microsystems in 1995. Initially called Oak, it was designed for embedded systems but quickly evolved into a popular general-purpose programming language. Today, it is maintained by Oracle and continues to be one of the most widely used languages worldwide.</p>

        <h2 id="syntax" class="mt-3 text-gray fs-3">Basic Syntax</h2>
        <p class="fs-6 text-muted">A simple Java program looks like this:</p>
        <pre class="bg-dark text-light p-3 rounded">
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
        </pre>

        <h2 id="datatypes" class="mt-3 text-gray fs-3">Data Types</h2>
        <p class="fs-6 text-muted">Java supports primitive data types such as <b>int</b>, <b>char</b>, <b>double</b>, and <b>boolean</b>, as well as reference types like classes and arrays.</p>

        <h2 id="variables" class="mt-3 text-gray fs-3">Variables</h2>
        <p class="fs-6 text-muted">Variables in Java store data values. Each variable has a data type that defines the kind of values it can hold. Example:</p>
        <pre class="bg-dark text-light p-3 rounded">
int age = 21;
String name = "Divyansh";
        </pre>

        <h2 id="classes" class="mt-3 text-gray fs-3">Classes & Objects</h2>
        <p class="fs-6 text-muted">Java is object-oriented. A <span class="fw-semibold text-dark">class defines the blueprint</span>, and objects are instances of classes.</p>

        <h2 id="inheritance" class="mt-3 text-gray fs-3">Inheritance</h2>
        <p class="fs-6 text-muted">Inheritance allows one class to acquire the properties of another. It promotes <span class="fw-semibold text-dark">reusability</span> and method overriding.</p>

        <h2 id="polymorphism" class="mt-3 text-gray fs-3">Polymorphism</h2>
        <p class="fs-6 text-muted">Polymorphism means performing a single action in different forms, such as <span class="fw-semibold text-dark">method overloading</span> and <span class="fw-semibold text-dark">method overriding</span> in Java.</p>

        <br><br>
      </main>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
