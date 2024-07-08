<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300 ;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="css/main css.css" />

    <link rel="stylesheet" href="css/icon.css" />

    <link rel="stylesheet" href="css/carousel.css" />

    <link rel="stylesheet" href="css/theme.css" />

    <link rel="stylesheet" href="css/template.css" />
</head>
<body>
    <form id="form1" runat="server">
        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand me-lg-5 me-0" href="index.html">
                        <img src="images/CODE-removebg-preview.png" class="logo-image img-fluid" alt="logo">
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link " href="index.html">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>

                        <div class="ms-4">
                            <a href="#section_3" class="btn custom-btn custom-border-btn smoothscroll">LOGIN</a>
                        </div>
                    </div>
                </div>
            </nav>

            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">

                            <h2 class="mb-0">Services</h2>
                        </div>

                    </div>
                </div>
            </header>


            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">



                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title">Technologies and questions</h4>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="team-thumb bg-white shadow-lg">
                                <img src="images/images.jpg"
                                    class="about-image img-fluid" alt="">

                                <div class="team-info">
                                    <h4 class="mb-2">#C Sharp
                                    </h4>

                                    <span class="badge">Flexibility and Power</span>

                                    <span class="badge"> Strong Tooling </span>
                                </div>

                                <div class="social-share">
                                    <ul class="social-icon">
                                        <li class="social-icon-item"></li>

                                        <li class="social-icon-item">
                                            <a href="#">TECH<i class="bi bi-plus-circle-fill"></i></a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#">QUES <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="team-thumb bg-white shadow-lg">
                                <img src="images/images (2).jpg"
                                    class="about-image img-fluid" alt="">

                                <div class="team-info">
                                    <h4 class="mb-2">C++
                                    </h4>

                                    <span class="badge">Wide Range</span>

                                    <span class="badge">Memory Management</span>
                                </div>

                                <div class="social-share">
                                    <ul class="social-icon">
                                        <li class="social-icon-item"></li>

                                        <li class="social-icon-item">
                                            <a href="#">TECH <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#">QUES <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
                            <div class="team-thumb bg-white shadow-lg">
                                <img src="images/download (1).jpg"
                                    class="about-image img-fluid" alt="">

                                <div class="team-info">
                                    <h4 class="mb-2">Asp
                                    </h4>

                                    <span class="badge">Support for Multiple Scripting Languages</span>
                                </div>

                                <div class="social-share">
                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#">TECH <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#">QUES <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12">
                            <div class="team-thumb bg-white shadow-lg">
                                <img src="images/Skills-you-need-to-get-a-job-as-a-JavaScript-developer-1.png"
                                    class="about-image img-fluid" alt="">

                                <div class="team-info">
                                    <h4 class="mb-2">Java Script 
                                    </h4>

                                    <span class="badge">Versatility</span>

                                    <span class="badge">Client-Side Scripting</span>
                                </div>

                                <div class="social-share">
                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#">TECH <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#">QUES <i class="bi bi-plus-circle-fill"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>








        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 col-12">
                        <a class="navbar-brand" href="index.html">
                            <img src="images/CODE-removebg-preview.png" class="logo-image img-fluid" alt="logo">
                        </a>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">

                        <ul class="site-footer-links">
                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="#" class="site-footer-link">Home</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="#" class="site-footer-link">About</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="#" class="site-footer-link">Contact Us</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="#" class="site-footer-link">LOGIN</a>
                            </li>
                        </ul>

                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                        <h6 class="site-footer-title mb-3">Contact</h6>

                        <p class="mb-2"><strong class="d-inline me-2">Phone:</strong> 0771234567</p>

                        <p>
                            <strong class="d-inline me-2">Email:</strong>
                            <a href="#">codesphere@gmail.com</a>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12">


                        <h6 class="site-footer-title mb-3">Social</h6>

                        <ul class="social-icon">
                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-instagram"></a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-twitter"></a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-whatsapp"></a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="container ">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div style="display: flex; justify-content: center;">
                            <p>Copyright Â© 2024 codesphere academy</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
