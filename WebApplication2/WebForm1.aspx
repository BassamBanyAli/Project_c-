<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>services</title>
    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />

    <link rel="preconnect" href="https://fonts.gstatic.com" />

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300 ;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="css/main css.css" />

    <link rel="stylesheet" href="css/icon.css" />

    <link rel="stylesheet" href="css/carousel2.css" />

    <link rel="stylesheet" href="css/theme.css" />

    <link rel="stylesheet" href="css/template.css" />
    <link rel="stylesheet" href="StyleSheet1.css" />

    <style>
        
       
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand me-lg-5 me-0" href="index.html">
                        <img src="images/CODE-removebg-preview.png" class="logo-image img-fluid" alt="logo" />
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

                            <h2 class="mb-0">Add Technologies</h2>
                        </div>

                    </div>
                </div>
            </header>


            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">


                        <a href="Students_C#.txt"></a>
                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title"><a href="#popup">Add Technologies and questions <i class="bi bi-plus-circle-fill"></i></a></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>






        <!-- The popup window -->
       <div id="popup">
            <h2>Add Technologies</h2>
            <br />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch1">C#</asp:Label>
            <asp:CheckBox runat="server" ID="ch1" />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch2">C++</asp:Label>
            <asp:CheckBox runat="server" ID="ch2" />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch3">PHP</asp:Label>
            <asp:CheckBox runat="server" ID="ch3" />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch4">Node Js</asp:Label>
            <asp:CheckBox runat="server" ID="ch4" />
            <br />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>

        <asp:Panel ID="cardscontainer123" runat="server">
        </asp:Panel>









        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 col-12">
                        <a class="navbar-brand" href="index.html">
                            <img src="images/CODE-removebg-preview.png" class="logo-image img-fluid" alt="logo" />
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
    <script src="JavaScript.js"></script>
</body>
</html>

