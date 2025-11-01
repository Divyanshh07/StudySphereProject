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
            <a class="nav-link active fw-semibold" href="../home.jsp">Home</a>
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
            <a class="nav-link fw-semibold" href="../About.jsp">About</a>
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
                    <li><a href="#whayJavaWasDeveloped" class="nav-link">Why Java was Developed?</a></li>
                     <li><a href="#history" class="nav-link">History</a></li>
                    <li><a href="#features" class="nav-link">Features</a></li>
                    <li><a href="#differentPlatformIndependent" class="nav-link">Different platform Independent</a></li>
                    <li><a href="#differentBetweenJvmJreJdk" class="nav-link">Difference Between JVM,JRE,JDK</a></li>
                    <li><a href="#javaVersion" class="nav-link">Java versions</a></li>
                    <li><a href="#jvmArchitecture" class="nav-link">JVM Architecture</a></li>
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
                    <li><a href="#Keywords" class="nav-link">Keywords</a></li>
                    <li><a href="#Operators" class="nav-link">Operators</a></li>
                    <li><a href="#Looping Statements" class="nav-link">Looping Statements</a></li>
                    <li><a href="#Conditional Statements" class="nav-link">Conditional Statements</a></li>
                    <li><a href="#Type Casting" class="nav-link">Type Casting</a></li>

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
                    <li><a href="#whyoop" class="nav-link">Why OOp</a></li>
                    <li><a href="#oopconcept" class="nav-link">OOP Concept</a></li>
                    <li><a href="#classes" class="nav-link">Classes & Objects</a></li>
                    <li><a href="#referncevariable" class="nav-link">Reference Variable</a></li>
                    <li><a href="#constructors" class="nav-link">Constructors</a></li>
                    <li><a href="#staticvariable" class="nav-link">Static Variables</a></li>
                    <li><a href="#staticmethod" class="nav-link">This Keywords</a></li>
                    <li><a href="#encapsulation" class="nav-link">Encapsulation</a></li>
                    <li><a href="#inheritance" class="nav-link">Inheritance</a></li>
                    <li><a href="#polymorphism" class="nav-link">Polymorphism</a></li>
                    <li><a href="#abstraction" class="nav-link">Abstraction</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!--Packages-->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#PackagesCollapse">
                  Packages
                </button>
              </h2>
              <div id="PackagesCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#understandingpackages" class="nav-link">Understanding Packages</a></li>
                    <li><a href="#classpath" class="nav-link">Class Path</a></li>
                    <li><a href="#accessmodifiers" class="nav-link">Access Modifiers</a></li>
                    <li><a href="#implements" class="nav-link">Implements</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!--Packages-->
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#nestedtypesCollapse">
                  Nested Types
                </button>
              </h2>
              <div id="nestedtypesCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#static&nonstaticclass" class="nav-link">Static & Non-Static Class</a></li>
                    <li><a href="#local&anonymousclass" class="nav-link">Local & Anonymous Class</a></li>
                    <li><a href="#interface" class="nav-link">Interface</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!--Arrays-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#arraysCollapse">
                  Arrays
                </button>
              </h2>
              <div id="arraysCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#definitionwithadvantages" class="nav-link">Definition With Advantages</a></li>
                    <li><a href="#types" class="nav-link">Types</a></li>
                    <li><a href="#referencetype" class="nav-link">Reference Type</a></li>
                     <li><a href="#operations" class="nav-link">Oerations</a></li>
                     <li><a href="#userdefinearray&object" class="nav-link">User Define Array & Object</a></li>
                  </ul>
                </div>
              </div>
            </div>

                <!--Wrapper Classes-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#wrapperclassesCollapse">
                  Wrapper Classes
                </button>
              </h2>
              <div id="wrapperclassesCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#howtoread" class="nav-link">How To Read</a></li>
                    <li><a href="#wrapperclasses" class="nav-link">Wrapper Classes</a></li>
                    <li><a href="#numericstrings" class="nav-link">Numeric Strings</a></li>
                     <li><a href="#representation" class="nav-link">Representaion</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!--Exception Handling-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#exceptionhandlingCollapse">
                  Exception Handling
                </button>
              </h2>
              <div id="exceptionhandlingCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                  <li><a href="#exception" class="nav-link">Exception</a></li>
                    <li><a href="#exceptionhandling" class="nav-link">Exception Handling</a></li>
                    <li><a href="#typesofruntimeerror" class="nav-link">Types Of Runtime Error</a></li>
                    <li><a href="#understandingexcepton" class="nav-link">Understanding Exception</a></li>
                    <li><a href="#exceptionclass" class="nav-link">Exception Class</a></li>
                     <li><a href="#try&catchblock" class="nav-link">Try & Catch Block</a></li>
                    <li><a href="#throwthrows&finally" class="nav-link">Throw, throws & Finally</a></li>
                    <li><a href="#customexception" class="nav-link">Custom Exception</a></li>
                    <li><a href="#checked&uncheckedexception" class="nav-link">Checked & Unchecked Exception</a></li>
                  </ul>
                </div>
              </div>
            </div>

              <!--Strings-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#stringsCollapse">
                Strings
                </button>
              </h2>
              <div id="stringsCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatisstring" class="nav-link">What Is String</a></li>
                    <li><a href="#stringclass&object" class="nav-link">String Class & Object</a></li>
                    <li><a href="#opeeration" class="nav-link">Operation</a></li>
                    <li><a href="#stringbufferclass&method" class="nav-link">String Buffer Class & Method</a></li>
                    <li><a href="#differencebetweenstring&stringbufferclass" class="nav-link">Difference between String & StringBuffer</a></li>
                   <li><a href="#stringbuilderclass&method" class="nav-link">String Buffer Class & Method</a></li>
                    <li><a href="#differencebetweenstringbuffer&stringbuilfer" class="nav-link">Difference between StringBuffer & StringBuilder</a></li>
                  </ul>
                </div>
              </div>
            </div>

               <!--MultiThreading-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#multithreadingCollapse">
                MultiThreading
                </button>
              </h2>
              <div id="multithreadingCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#multithreading" class="nav-link">MultiThreading</a></li>
                    <li><a href="#multitasking&multiprocessing" class="nav-link">Multitasking & Multiprocessing</a></li>
                    <li><a href="#mainthread" class="nav-link">Main Thread</a></li>
                     <li><a href="#creatingthread" class="nav-link">Creating Thread</a></li>                                  <li><a href="#states&group" class="nav-link">States & Group</a></li>
                     <li><a href="#threadsynchronization" class="nav-link">Thread Synchronization</a></li>
                    <li><a href="#interthreadcommunication" class="nav-link">Inter-Thread Communication</a></li>
                    <li><a href="#daemonthread" class="nav-link">Daemon Thread</a></li>
                    <li><a href="#deadlock" class="nav-link">Deadlock</a></li>
                    <li><a href="#concernthread" class="nav-link">Concern Thread</a></li>
                  </ul>
                </div>
              </div>
            </div>

        <!--I/O Streams-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#iostreamsCollapse">
                I/O Streams
                </button>
              </h2>
              <div id="iostreamsCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatisio" class="nav-link">What Is I/O?</a></li>
                    <li><a href="#whyneedstrteams" class="nav-link">Why Need Streams</a></li>
                    <li><a href="#byteandcharacterstreams" class="nav-link">Byte and Character Streams</a></li>
                     <li><a href="scannerclass" class="nav-link">Scanner Class</a></li>                                      <li><a href="#serializationanddeserialization" class="nav-link">Serialization And Deserialization</a></li>
                     <li><a href="#transientkeyword" class="nav-link">Transient Keyword</a></li>
                    <li><a href="#fileclassandmethods" class="nav-link">File Class And Methods</a></li>
                  </ul>
                </div>
              </div>
            </div>


            <!--Socket Programming-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#socketprogrammingCollapse">
               Socket Programming
                </button>
              </h2>
              <div id="socketprogrammingCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatissocketprogramming" class="nav-link">What Is Socket Programming?</a></li>
                    <li><a href="#fundamentalsofnetwork" class="nav-link">Fundamentals Of Network</a></li>
                    <li><a href="#socketandserversocketclasses" class="nav-link">Socket And ServerSocket class-based</a></li>
                     <li><a href="inetaddressclass" class="nav-link">InetAddress Class</a></li>                                   <li><a href="#datagramsocketanddatagrampacketclasses" class="nav-link">DatagramSocket and DatagramPacket classes</a></li>
                     <li><a href="#urlconnectionhttpsurlconnectionclasses" class="nav-link">URL,URL Connection,HttpsURLConnection Classes</a></li>
                  </ul>
                </div>
              </div>
            </div>
 
            <!--Reflection-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#reflectionCollapse">
                Reflection
                </button>
              </h2>
              <div id="reflectionCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatisreflection" class="nav-link">What Is Reflection?</a></li>
                    <li><a href="#needofreflection" class="nav-link">Need Of Reflection</a></li>
                    <li><a href="#classesmodifiersfieldmethodsconstructorandsuperclasses" class="nav-link">ClassesModifiers,Field,Methods,Constructor And Super Classes</a></li>
                     <li><a href="constantandmethoddeclarationtointerface" class="nav-link">Constant And Method Declaration To Interface</a></li>                                                                                      <li><a href="#creatinganinstanceofclass" class="nav-link">Creating An Instance Of Class</a></li>
                     <li><a href="#gettingandsettingvaluesofobjects" class="nav-link">Getting And Setting Values Of objects</a></li>
                     <li><a href="#invokedandinvokedprivatemethods" class="nav-link">Invoked And Invoked Private Methods </a></li>
                  </ul>
                </div>
              </div>
            </div>

             <!--Utility Concepts-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#utilityconceptsCollapse">
                Utility Concepts
                </button>
              </h2>
              <div id="utilityconceptsCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#generics" class="nav-link">Generics</a></li>
                    <li><a href="#lambdaexpression" class="nav-link">Lambda Expressions</a></li>
                    <li><a href="#annotations" class="nav-link">Annotations</a></li>
                     <li><a href="objectcloning" class="nav-link">object Cloning</a></li>                                                                                                    <li><a href="#staticimport" class="nav-link">Static Import</a></li>
                     <li><a href="#enum" class="nav-link">Enum</a></li>
                     <li><a href="#staticdefaultandprivatemethodsofinterface" class="nav-link">Static,Default And Private Methods Of Interface </a></li>
                    <li><a href="#vartype" class="nav-link">Var Type</a></li>
                    <li><a href="#Stramapi" class="nav-link">Stram API</a></li>
                  </ul>
                </div>
              </div>
            </div>

              <!--Collection Framework-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#collectionframeworkCollapse">
                Collection Framework
                </button>
              </h2>
              <div id="collectionframeworkCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#whatiscollection?" class="nav-link">What Is Collection?</a></li>
                    <li><a href="#whatisframework?" class="nav-link">What Is Framework?</a></li>
                    <li><a href="#collectionframework" class="nav-link">Collection Framework</a></li>
                     <li><a href="coreinterface" class="nav-link">Core Interface</a></li>                                                                                                    <li><a href="#collectionlistqueuedeque" class="nav-link">Collection,List,Queue,Deque</a></li>
                     <li><a href="#setnavigablesetsortedset" class="nav-link">Set,Navigation Set,Sorted Set</a></li>
                     <li><a href="#mapnavigablemapsortedmap" class="nav-link">Map,Navigation Map,Sorted Map </a></li>
                    <li><a href="#coreclasse" class="nav-link">Core Classes</a></li>
                    <li><a href="#arraylistlinkedlistpriorityqueuearraydeque" class="nav-link">ArrayList,LinkedList,PriorityQueue,ArrayDeque</a></li>
                     <li><a href="#hashsetlinkedhassettreeset" class="nav-link">HashSet,LinkedHasSet,TreeSet</a></li>
                    <li><a href="#hashmapidentityhashmapweakhashmaplinkedhashmaptreemap" class="nav-link">HashMap,IdentityHashMap,WeakHashMap,LinkedHashMap,TreeMap</a></li>
                    <li><a href="#accessingacollection" class="nav-link">Accessing A Collection</a></li>
                    <li><a href="#Accessinglist" class="nav-link">Accessing List</a></li>
                    <li><a href="#userdefineobjects" class="nav-link">User Define Objects</a></li>
                    <li><a href="#comparatorandcomparableinterfaces" class="nav-link">Comparator And Comparable Interfaces</a></li>
                    <li><a href="#lagacyclassesandinterface" class="nav-link">Lagacy Classes And Interface</a></li>
                    <li><a href="#enumerationvectorstack" class="nav-link">Enumeration,Vector, Stack</a></li>
                    <li><a href="#hashtableproperties" class="nav-link">HashTable,Properties</a></li>
                  </ul>
                </div>
              </div>
            </div>

              <!--Date & Time API-->
             <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-semibold small" type="button" data-bs-toggle="collapse" data-bs-target="#date&timeapiCollapse">
                 Date & Time API
                </button>
              </h2>
              <div id="date&timeapiCollapse" class="accordion-collapse collapse">
                <div class="accordion-body p-2">
                  <ul class="nav flex-column small">
                    <li><a href="#java.util.date" class="nav-link">java.util.Date</a></li>
                    <li><a href="#java.util.calender" class="nav-link">java.util.Calender</a></li>
                    <li><a href="#java.sql.date" class="nav-link">java.sql.Date</a></li>
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
        <p class="fs-6 text-muted">Java is a <span class="fw-semibold text-dark">high-level, class-based, object-oriented programming language</span>developed by Sun Microsystems (now owned by Oracle).
        It is widely used because of its platform independence — meaning you can write code once and run it anywhere, thanks to the Java Virtual Machine (JVM).</p>

        <h2 id="whyJavawasDeveloped" class="mt-3 text-gray fs-3">Why Java was Developed?</h2>
        <p class="fs-6 text-muted">Java is a <span class="fw-semibold text-dark">high-level, class-based, object-oriented programming language</span>developed by Sun Microsystems (now owned by Oracle).
        It is widely used because of its platform independence — meaning you can write code once and run it anywhere, thanks to the Java Virtual Machine (JVM).</p>

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
        <p class="fs-6 text-muted">In Java, datatypes are divided into two parts. <h5>(i)Primitive Datatype</h5>Java supports primitive data types such as<b>int</b>, <b>char</b>, <b>double</b>, and <b>boolean</b> as well as reference types like classes and arrays.<h5>(ii)Non-Primitive Datatype</h5>Non-Primitive Datatype as</b>Interface</b>String</b>Array and other.</p>

        <h2 id="variables" class="mt-3 text-gray fs-3">Variables</h2>
        <p class="fs-6 text-muted">Variables in Java store data values. Each variable has a data type that defines the kind of values it can hold. Example:</p>
        <pre class="bg-dark text-light p-3 rounded">
int age = 21;
String name = "Divyansh";
        </pre>

        <h2 id="classes" class="mt-3 text-gray fs-3">Classes & Objects</h2>
        <p class="fs-6 text-muted"><h4>Java Classes</h4>A class in Java is a template with the help of which we create real-world entities known as objects that share common characteristics and properties.<span class="fw-semibold text-dark"><br>Properties of Java Classes</span>Class is not a real-world entity. It is just a template or blueprint, or a prototype from which objects are created.<br>A Class in Java can contain Data members, methods, a Constructor, Nested classes, and interfaces.<h5>Class Declaration in Java</h5>access_modifier class<class_name> {}<h5>Components of Java Classes</h5>*Modifiers<br>*Class keyword<br>*Class name<br>*Superclass (if any)<br>*Interfaces(if any)<br>*Constructors<h4>Java Objects</h4>Objects are the instances of a class that are created to use the attributes and methods of a class. A typical Java program creates many objects, which as you know, interact by invoking methods.<br> An object consists of:<br>-State: It is represented by attributes of an object. It also reflects the properties of an object.<br>-Behavior: It is represented by the methods of an object. It also reflects the response of an object with other objects.
<br>-Identity: It gives a unique name to an object and enables one object to interact with other objects.<br>Note: Objects (non-primitive types) are always allocated on the heap, while their reference variables are stored on the stack.<h5>Object Instantiation (Declaring Objects)</h5>When an object of a class is created, the class is said to be instantiated. All the instances share the attributes and the behavior of the class.<h5>Ways to Create an Object of a Class</h5> Although the new keyword is the primary way to create an object, the other methods also internally rely on the new keyword to create instances.<h5>1. Using new Keyword</h5>It is the most common and general way to create an object in Java.<br>// creating object of class Test <br>
Test t = new Test();</p>

        <h2 id="inheritance" class="mt-3 text-gray fs-3">Inheritance</h2>
        <p class="fs-6 text-muted">Java Inheritance is a fundamental concept in OOP(Object-Oriented Programming).It is the mechanism in Java by which one class is allowed to inherit the features(fields and methods) of another class.<br> Example: In the following example, Animal is the base class and Dog, Cat and Cow are derived classes that extend the Animal class.
   <span class="fw-semibold text-dark"><h5>Implementation:</h5></span>// Parent class<br>
class Animal {<br>
    void sound() {<br>
        System.out.println("Animal makes a sound");<br>
    }<br>
}<br>
<br>
// Child class<br>
class Dog extends Animal {<br>
    void sound() {<br>
        System.out.println("Dog barks");<br>
    }<br>
}<br>
<br>
// Child class<br>
class Cat extends Animal {<br>
    void sound() {<br>
        System.out.println("Cat meows");<br>
    }<br>
}<br>
<br>
// Child class<br>
class Cow extends Animal {<br>
    void sound() {<br>
        System.out.println("Cow moos");<br>
    }<br>
}<br>

// Main class<br>
public class Geeks {<br>
    public static void main(String[] args) {<br>
        Animal a;<br>
        a = new Dog();<br>
        a.sound();  <br>
<br>
        a = new Cat();<br>
        a.sound(); <br>
<br>
        a = new Cow();<br>
        a.sound();  <br>
    }<br>
} 
<br><h4>How Inheritance Works in Java?</h4>
The extends keyword is used for inheritance in Java. It enables the subclass to inherit the fields and methods of the superclass.<br>
Note: The extends keyword establishes an "is-a" relationship between the child class and the parent class. This allows a child class to have all the behavior of the parent class.<h4>Types of Inheritance in Java:</h4>*Single Inheritance<br>*Multilevel Inheritance<br>*Hierarchical Inheritance<br>*Multiple Inheritance<br>*Hybrid inheritance
<h5>1. Single Inheritance</h5>In single inheritance, a sub-class is derived from only one super class. It inherits the properties and behavior of a single-parent class. Sometimes, it is also known as simple inheritance.<br>Example:
//Super class<br>
class Vehicle {<br>
    Vehicle() {<br>
        System.out.println("This is a Vehicle");<br>
    }<br>
}<br>
<br>
// Subclass <br>
class Car extends Vehicle {<br>
    Car() {<br>
        System.out.println("This Vehicle is Car");<br>
    }<br>
}<br>
<br>
public class Test {<br>
    public static void main(String[] args) {<br>
        // Creating object of subclass invokes base class constructor<br>
        Car obj = new Car();<br>
    }<br>
}
<h5>2. Multilevel Inheritance</h5>In Multilevel Inheritance, a derived class will be inheriting a base class and as well as the derived class also acts as the base class for other classes.<br>Example:<br>
class Vehicle {<br>
    Vehicle() {<br>
        System.out.println("This is a Vehicle");<br>
    }<br>
}<br>
class FourWheeler extends Vehicle {<br>
    FourWheeler() {<br>
        System.out.println("4 Wheeler Vehicles");<br>
    }<br>
}<br>
class Car extends FourWheeler {<br>
    Car() {<br>
        System.out.println("This 4 Wheeler Vehicle is a Car");<br>
    }<br>
}<br>
public class Geeks {<br>
    public static void main(String[] args) {<br>
        Car obj = new Car(); // Triggers all constructors in order<br>
    }<br>
}
<h5>3. Hierarchical Inheritance</h5>In hierarchical inheritance, more than one subclass is inherited from a single base class. i.e. more than one derived class is created from a single base class.<br> For example, cars and buses both are vehicle<br>Example:<br>
class Vehicle {<br>
    Vehicle() {<br>
        System.out.println("This is a Vehicle");<br>
    }<br>
}<br>
<br>
class Car extends Vehicle {<br>
    Car() {<br>
        System.out.println("This Vehicle is Car");<br>
    }<br>
}<br>
<br>
class Bus extends Vehicle {<br>
    Bus() {<br>
        System.out.println("This Vehicle is Bus");<br>
    }<br>
}<br>
<br>
public class Test {<br>
    public static void main(String[] args) {<br>
        Car obj1 = new Car(); <br>
        Bus obj2 = new Bus(); <br>
    }<br>
}
<h5>4. Multiple Inheritance (Through Interfaces)</h5>In Multiple inheritances, one class can have more than one superclass and inherit features from all parent classes.<br>Note: that Java does not support multiple inheritances with classes. In Java, we can achieve multiple inheritances only through Interfaces. <br>Example:<br>
interface LandVehicle {<br>
    default void landInfo() {<br>
        System.out.println("This is a LandVehicle");<br>
    }<br>
}<br>
interface WaterVehicle {<br>
    default void waterInfo() {<br>
        System.out.println("This is a WaterVehicle");<br>
    }<br>
}<br>
// Subclass implementing both interfaces<br>
class AmphibiousVehicle implements LandVehicle, WaterVehicle {<br>
    AmphibiousVehicle() {<br>
        System.out.println("This is an AmphibiousVehicle");<br>
    }<br>
}<br>
public class Test {<br>
    public static void main(String[] args) {<br>
        AmphibiousVehicle obj = new AmphibiousVehicle();<br>
        obj.waterInfo();<br>
        obj.landInfo();<br>
    }<br>
}
<h5>5. Hybrid Inheritance</h5>It is a mix of two or more of the above types of inheritance. In Java, we can achieve hybrid inheritance only through Interfaces if we want to involve multiple inheritance to implement Hybrid inheritance.</p>

        <h2 id="polymorphism" class="mt-3 text-gray fs-3">Polymorphism</h2>
        <p class="fs-6 text-muted">Polymorphism in Java is one of the core concepts in object-oriented programming (OOP) that allows objects to behave differently based on their specific class type. The word polymorphism means having many forms, and it comes from the Greek words poly (many) and morph (forms) <span class="fw-semibold text-dark"></span><h5>Key features of polymorphism:</h5>  <span class="fw-semibold text-dark">*Method Overriding: A child class can redefine a method of its parent class.<br>*Method Overloading: We can define multiple methods with the same name but different parameters.</span><h5>Why Use Polymorphism In Java?</h5>*Code Reusability<br>*Flexibility<br>*Dynamic Behavior
        <h5>Types of Polymorphism in Java</h5>In Java Polymorphism is mainly divided into two types:<br>1>Compile-Time Polymorphism (Static)<br>2>Runtime Polymorphism (Dynamic)
      <h5>1. Compile-Time Polymorphism</h5>Compile-Time Polymorphism in Java is also known as static polymorphism and also known as method overloading. This happens when multiple methods in the same class have the same name but different parameters.<br>Note: But Java doesn't support the Operator Overloading. <h4>Method Overloading</h4> Method overloading in Java means when there are multiple functions with the same name but different parameters then these functions are said to be overloaded.<br>Example: Method overloading by changing the number of arguments<br>
    // Method overloading By using<br>
// Different Types of Arguments<br>
<br>
// Class 1<br>
// Helper class<br>
class Helper {<br>
<br>
    // Method with 2 integer parameters<br>
    static int Multiply(int a, int b)<br>
    {<br>
        // Returns product of integer numbers<br>
        return a * b;<br>
    }<br>
<br>
    // Method 2<br>
    // With same name but with 2 double parameters<br>
    static double Multiply(double a, double b)<br>
    {<br>
        // Returns product of double numbers<br>
        return a * b;<br>
    }<br>
}<br>
<br>
// Class 2<br>
// Main class<br>
class Geeks<br>
{<br>
    // Main driver method<br>
    public static void main(String[] args) {<br>
      <br>
        // Calling method by passing<br>
        // input as in arguments<br>
        System.out.println(Helper.Multiply(2, 4));<br>
        System.out.println(Helper.Multiply(5.5, 6.3));<br>
    }<br>
}
<h5>2. Runtime Polymorphism</h5>It is a process in which a function call to the overridden method is resolved at Runtime. This type of polymorphism is achieved by Method Overriding. <h4>Method Overriding</h4>Method overriding in Java means when a subclass provides a specific implementation of a method that is already defined in its superclass. The method in the subclass must have the same name, return type, and parameters as the method in the superclass.<br>Example: <br>
// Java Program for Method Overriding<br>

// Class 1<br>
// Helper class<br>
class Parent {<br>
<br>
    // Method of parent class<br>
    void Print() {<br>
        System.out.println("parent class");<br>
    }<br>
}<br>
<br>
// Class 2<br>
// Helper class<br>
class subclass1 extends Parent {<br>
<br>
    // Method<br>
    void Print() { <br>
      System.out.println("subclass1"); <br>
    }<br>
}<br>
<br>
// Class 3<br>
// Helper class<br>
class subclass2 extends Parent {<br>
<br>
    // Method<br>
    void Print() {<br>
        System.out.println("subclass2");<br>
    }<br>
}<br>
<br>
// Class 4<br>
// Main class<br>
class Geeks {<br>
<br>
    // Main driver method<br>
    public static void main(String[] args) {<br>
<br>
        // Creating object of class 1<br>
        Parent a;<br>
<br>
        // Now we will be calling print methods<br>
        // inside main() method<br>
        a = new subclass1();<br>
        a.Print();<br>
<br>
        a = new subclass2();<br>
        a.Print();<br>
    }<br>
}
</p>

        <br><br>
      </main>
    </div>
  </div>
      

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
