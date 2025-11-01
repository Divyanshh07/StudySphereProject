<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>StudySphere - HTML Course</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { padding-top: 70px; }
    .sidebar {
      height: 100vh;
      overflow-y: auto;
      position: fixed;
      top: 70px;
      left: 0;
      width: 250px;
      background-color: #fff;
      border-right: 1px solid #dee2e6;
      padding-top: 1rem;
    }
    main {
      margin-left: 260px;
      padding: 2rem;
    }
    .accordion-button:not(.collapsed) {
      color: #0d6efd;
      background-color: #e7f1ff;
    }
    pre {
      background-color: #f8f9fa;
      padding: 1rem;
      border-radius: 0.25rem;
    }
  </style>
</head>
<body class="bg-light">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top shadow">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold fs-4" href="#">StudySphere</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto">
        <li class="nav-item"><a class="nav-link active fw-semibold" href="#">Home</a></li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle fw-semibold" href="#" id="coursesDropdown" role="button" data-bs-toggle="dropdown">Courses</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="java.jsp">Java</a></li>
            <li><a class="dropdown-item" href="html.jsp">HTML</a></li>
            <li><a class="dropdown-item" href="css.jsp">CSS</a></li>
            <li><a class="dropdown-item" href="python.jsp">Python</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="allcourses.jsp">All Courses</a></li>
          </ul>
        </li>
        <li class="nav-item"><a class="nav-link fw-semibold" href="#">About</a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search topics...">
        <button class="btn btn-light fw-semibold" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<!-- Sidebar -->
<nav class="sidebar">
  <h6 class="px-3 fw-bold text-uppercase text-secondary small">HTML Topics</h6>
  <div class="accordion" id="sidebarAccordion">
    <div class="accordion-item">
      <h2 class="accordion-header" id="headingIntro">
        <button class="accordion-button fw-semibold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseIntro">
          Introduction
        </button>
      </h2>
      <div id="collapseIntro" class="accordion-collapse collapse show" data-bs-parent="#sidebarAccordion">
        <div class="accordion-body p-2">
          <ul class="nav flex-column small">
            <li><a href="#whatIsHtml" class="nav-link">What is HTML?</a></li>
            <li><a href="#htmlvshtml5" class="nav-link">HTML vs HTML5</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <h2 class="accordion-header" id="headingElements">
        <button class="accordion-button collapsed fw-semibold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseElements">
          Basic Elements
        </button>
      </h2>
      <div id="collapseElements" class="accordion-collapse collapse" data-bs-parent="#sidebarAccordion">
        <div class="accordion-body p-2">
          <ul class="nav flex-column small">
            <li><a href="#heading" class="nav-link">Heading</a></li>
            <li><a href="#paragraph" class="nav-link">Paragraph</a></li>
            <li><a href="#formatting" class="nav-link">Formatting</a></li>
            <li><a href="#image" class="nav-link">Image</a></li>
            <li><a href="#anchor" class="nav-link">Anchor</a></li>
            <li><a href="#list" class="nav-link">List</a></li>
            <li><a href="#table" class="nav-link">Table</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <h2 class="accordion-header" id="headingAttributes">
        <button class="accordion-button collapsed fw-semibold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAttributes">
          Attributes
        </button>
      </h2>
      <div id="collapseAttributes" class="accordion-collapse collapse" data-bs-parent="#sidebarAccordion">
        <div class="accordion-body p-2">
          <ul class="nav flex-column small">
            <li><a href="#id" class="nav-link">Id</a></li>
            <li><a href="#class" class="nav-link">Class</a></li>
            <li><a href="#iframe" class="nav-link">IFrame</a></li>
            <li><a href="#div" class="nav-link">Div</a></li>
            <li><a href="#span" class="nav-link">Span</a></li>
            <li><a href="#form" class="nav-link">Form</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <h2 class="accordion-header" id="headingMedia">
        <button class="accordion-button collapsed fw-semibold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMedia">
          Media
        </button>
      </h2>
      <div id="collapseMedia" class="accordion-collapse collapse" data-bs-parent="#sidebarAccordion">
        <div class="accordion-body p-2">
          <ul class="nav flex-column small">
            <li><a href="#audio" class="nav-link">Audio</a></li>
            <li><a href="#video" class="nav-link">Video</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</nav>

<!-- Main Content -->
<main>
  <h2 id="whatIsHtml">What is HTML?</h2>
  <p>
    HTML (HyperText Markup Language) is the standard markup language used to create web pages.
    It structures content such as headings, paragraphs, links, images, and multimedia.
    HTML consists of tags and attributes that tell the browser how to display content.
  </p>
  <pre>
Example:
&lt;h1&gt;Welcome to HTML&lt;/h1&gt;
&lt;p&gt;This is a paragraph.&lt;/p&gt;
  </pre>

  <h2 id="htmlvshtml5">HTML vs HTML5</h2>
  <p>
    HTML5 is the latest version of HTML that introduces semantic tags, multimedia support, 
    canvas for drawing, improved form controls, and APIs for web applications.
  </p>

  <h2 id="heading">Heading</h2>
  <p>
    Headings are defined using &lt;h1&gt; to &lt;h6&gt; tags. 
    &lt;h1&gt; is the most important heading, &lt;h6&gt; the least.
  </p>

  <h2 id="paragraph">Paragraph</h2>
  <p>
    Paragraphs are defined using &lt;p&gt; tags. 
    Each paragraph starts on a new line and is block-level.
  </p>

  <h2 id="formatting">Formatting</h2>
  <p>
    Formatting tags include:
    <ul>
      <li>&lt;b&gt; or &lt;strong&gt; for bold text</li>
      <li>&lt;i&gt; or &lt;em&gt; for italic text</li>
      <li>&lt;sub&gt; for subscript and &lt;sup&gt; for superscript</li>
      <li>&lt;del&gt; for deleted text</li>
    </ul>
  </p>

  <h2 id="image">Image</h2>
  <p>
    Images are embedded using &lt;img&gt; tag with src and alt attributes.
  </p>
  <pre>
Example:
&lt;img src="image.jpg" alt="Description" width="300"&gt;
  </pre>

  <h2 id="anchor">Anchor</h2>
  <p>
    Hyperlinks are created with &lt;a&gt; tag using the href attribute.
  </p>
  <pre>
Example:
&lt;a href="https://www.example.com"&gt;Visit Example&lt;/a&gt;
  </pre>

  <h2 id="list">List</h2>
  <p>
    HTML supports unordered (&lt;ul&gt;), ordered (&lt;ol&gt;), and description (&lt;dl&gt;) lists.
  </p>

  <h2 id="table">Table</h2>
  <p>
    Tables use &lt;table&gt;, &lt;tr&gt;, &lt;td&gt;, &lt;th&gt; tags to organize data in rows and columns.
  </p>

  <h2 id="id">Id</h2>
  <p>
    Id attribute uniquely identifies an element in a page. Must be unique per page.
  </p>

  <h2 id="class">Class</h2>
  <p>
    Class attribute is used to group multiple elements for styling or scripting.
  </p>

  <h2 id="iframe">IFrame</h2>
  <p>
    IFrames embed another HTML page inside a page. Attributes include src, width, height.
  </p>

  <h2 id="div">Div</h2>
  <p>
    Div is a block-level container used to group content for layout or styling.
  </p>

  <h2 id="span">Span</h2>
  <p>
    Span is an inline container used to style or mark a section of text.
  </p>

  <h2 id="form">Form</h2>
  <p>
    Forms collect user input using input, textarea, select, checkbox, radio, and button elements.
  </p>

  <h2 id="audio">Audio</h2>
  <p>
    Audio element plays sound files. Example:
  </p>
  <pre>
&lt;audio controls&gt;
  &lt;source src="audio.mp3" type="audio/mpeg"&gt;
&lt;/audio&gt;
  </pre>

  <h2 id="video">Video</h2>
  <p>
    Video element plays video files. Example:
  </p>
  <pre>
&lt;video width="400" controls&gt;
  &lt;source src="video.mp4" type="video/mp4"&gt;
&lt;/video&gt;
  </pre>

</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
