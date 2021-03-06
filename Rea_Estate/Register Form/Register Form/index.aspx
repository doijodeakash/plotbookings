<%@ Page Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Register_Form.index" %>

<%--<!DOCTYPE html>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Home Page</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" rel="stylesheet">
        <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />-->

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
        <link rel="stylesheet" href="style.css">
        <link href="Home_page.css" rel="stylesheet" type="text/css" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            .contact-section {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
                min-height: 100vh;
                background: url(Images/Home_img4.jpg) no-repeat;
                background-size: cover;
                display: flex;
                justify-content: center;
                align-items: center;
                width: 100%;
                justify-content: center;
                align-items: center;
            }

            .contact-info {
                color: #fff;
                max-width: 500px;
                line-height: 65px;
                padding-left: 50px;
                font-size: 18px;
            }

                .contact-info i {
                    margin-right: 20px;
                    font-size: 25px;
                }

            .contact-form {
                max-width: 700px;
                margin-right: 50px;
            }

            .contact-info, .contact-form {
                flex: 1;
            }

                .contact-form h2 {
                    color: #fff;
                    text-align: center;
                    font-size: 35px;
                    text-transform: uppercase;
                    margin-bottom: 30px;
                }

                .contact-form .text-box {
                    background: #000;
                    color: #fff;
                    border: none;
                    width: calc(50% - 10px);
                    height: 50px;
                    padding: 12px;
                    font-size: 15px;
                    border-radius: 5px;
                    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                    margin-bottom: 20px;
                    opacity: 0.9;
                }

                    .contact-form .text-box:first-child {
                        margin-right: 15px;
                    }

                .contact-form textarea {
                    background: #000;
                    color: #fff;
                    border: none;
                    width: 100%;
                    padding: 12px;
                    font-size: 15px;
                    min-height: 200px;
                    max-height: 400px;
                    resize: vertical;
                    border-radius: 5px;
                    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                    margin-bottom: 20px;
                    opacity: 0.9;
                }

                .contact-form .send-btn {
                    float: right;
                    background: #2E94E3;
                    color: #fff;
                    border: none;
                    width: 120px;
                    height: 40px;
                    font-size: 15px;
                    font-weight: 600;
                    text-transform: uppercase;
                    letter-spacing: 2px;
                    border-radius: 5px;
                    cursor: pointer;
                    transition: 0.3s;
                    transition-property: background;
                }

                    .contact-form .send-btn:hover {
                        background: #0582E3;
                    }

            @media screen and (max-width: 950px) {
                .contact-section {
                    flex-direction: column;
                }

                .contact-info, .contact-form {
                    margin: 30px 50px;
                }

                    .contact-form h2 {
                        font-size: 30px;
                    }

                    .contact-form .text-box {
                        width: 100%;
                    }
            }

            /*css for alert messages*/

            .alert-success {
                z-index: 1;
                background: #D4EDDA;
                font-size: 18px;
                padding: 20px 40px;
                min-width: 420px;
                position: fixed;
                right: 0;
                top: 10px;
                border-left: 8px solid #3AD66E;
                border-radius: 4px;
            }

            .alert-error {
                z-index: 1;
                background: #FFF3CD;
                font-size: 18px;
                padding: 20px 40px;
                min-width: 420px;
                position: fixed;
                right: 0;
                top: 10px;
                border-left: 8px solid #FFA502;
                border-radius: 4px;
            }



            section {
                padding: 60px 0;
            }

                section .section-title {
                    text-align: center;
                    color: #007b5e;
                    margin-bottom: 50px;
                    text-transform: uppercase;
                }

            #what-we-do {
                background: #ffffff;
            }

                #what-we-do .card {
                    padding: 1rem !important;
                    border: none;
                    margin-bottom: 1rem;
                    -webkit-transition: .5s all ease;
                    -moz-transition: .5s all ease;
                    transition: .5s all ease;
                }

                    #what-we-do .card:hover {
                        -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
                        -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
                        box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
                    }

                    #what-we-do .card .card-block {
                        padding-left: 50px;
                        position: relative;
                    }

                        #what-we-do .card .card-block a {
                            color: #007b5e !important;
                            font-weight: 700;
                            text-decoration: none;
                        }

                            #what-we-do .card .card-block a i {
                                display: none;
                            }

                    #what-we-do .card:hover .card-block a i {
                        display: inline-block;
                        font-weight: 700;
                    }

                    #what-we-do .card .card-block:before {
                        font-family: FontAwesome;
                        position: absolute;
                        font-size: 39px;
                        color: #007b5e;
                        left: 0;
                        -webkit-transition: -webkit-transform .2s ease-in-out;
                        transition: transform .2s ease-in-out;
                    }

                    #what-we-do .card .block-1:before {
                        content: "\f084";
                    }

                    #what-we-do .card .block-2:before {
                        content: "\f540";
                    }

                    #what-we-do .card .block-3:before {
                        content: "\f0eb";
                    }

                    #what-we-do .card .block-4:before {
                        content: "\f018";
                    }

                    #what-we-do .card .block-5:before {
                        content: "\f0a1";
                    }

                    #what-we-do .card .block-6:before {
                        content: "\f218";
                    }

                    #what-we-do .card:hover .card-block:before {
                        -webkit-transform: rotate(360deg);
                        transform: rotate(360deg);
                        -webkit-transition: .5s all ease;
                        -moz-transition: .5s all ease;
                        transition: .5s all ease;
                    }
        </style>

        <script>

            var prevScrollpos = window.pageYOffset;
            window.onscroll = function () {
                var currentScrollPos = window.pageYOffset;
                if (prevScrollpos > currentScrollPos) {
                    document.getElementById("navbar").style.top = "0";
                } else {
                    document.getElementById("navbar").style.top = "-50px";
                }
                prevScrollpos = currentScrollPos;
            }
        </script>

    </head>
    <body>
        <header>

            <%--          <nav class="navbar navbar-default navbar-fixed-top navbar-inverse " id="navbar">

                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">AARZO  </a>
                        <a class="navbar-brand" href="#" style="font-size:15px">REAL ESTATE</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#" style="">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Layout</a></li>
                            <li><a href="#">Facilities & Offers</a></li>
                            <li><a href="#">contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>--%>



            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="banner" style="background-image: url('Images/Home_img4.jpg');"></div>
                        <div class="carousel-caption">
                            <h2 class="animated slideInDown" style="animation-delay: 1s">SUCCESS <span>TOWNSHIPS</span></h2>
                            <!-- <h3 class="animated fadeInUp" style="animation-delay: 2s">WE MAKE YOUR DREAMS COME TRUE</h3>-->
                            <p class="animated bounceInRight" style="animation-delay: 2s"><a href="#">Booking Here</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="banner" style="background-image: url('Images/Home_img5.jpg');"></div>
                        <div class="carousel-caption">
                            <h2 class="animated slideInDown" style="animation-delay: 1s">SUCCESS <span>TOWNSHIPS</span></h2>
                            <!--<h3 class="animated fadeInUp" style="animation-delay: 2s">WE MAKE YOUR DREAMS COME TRUE</h3>-->
                            <p class="animated zoomIn" style="animation-delay: 3s"><a href="#">Booking Here</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="banner" style="background-image: url('Images/Home_img3.jpg');"></div>
                        <div class="carousel-caption">
                            <h2 class="animated zoomIn" style="animation-delay: 1s">Spaces to <span>explore</span></h2>
                            <h3 class="animated fadeInLeft" style="animation-delay: 2s">WE MAKE YOUR DREAMS COME TRUE</h3>
                            <p class="animated zoomIn" style="animation-delay: 3s"><a href="#">Booking Here</a></p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </header>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <div class="container-fluid mt-5">
            <div class="row " id="about">
                <div class="col-md-6 col-sm-6">
                    <img class="img-responsive mt-5" src="Images/Logo1.png" style="width: 100%; height: auto" />
                </div>
                <div class="col-md-6 col-sm-6 ">
                    <h2 class="mt-5" style="color: #333; font-size: 34px">ABOUT US</h2>
                    <hr style="width: 70px; height: 1px; background: #8eb640; float: left">
                        <br>
                        <br>
                        <p class="text-align-justify pt-4">
                            The maya group of hotels is known for its exclusive fine dining and open to sky seating The restaurant is known for touch of simplicity and unique class. We take the pride in offering tasty indian food with a difference drawn from north west cuisines with exotic picks from the regions of punjab maharashtra south india and mughal era. Here you can be assured of best indian cousins presented impeccably in the classiest of the table ware Food is cooked with in most hygienic atmosphere using the freshest of the ingredients in a state of the art kitchen fitted with the best of equipments using all the latest technology The veg and nonveg sections have there separate building and kitchens. And higher standard in service with our staff. we have ninja staff with us.
                        </p>
                    </hr>
                </div>
            </div>
        </div>
        <div class="container-fluid  w-100" style="margin-top: 20px; background-image: url('Images/background1.jpg'); background-size: cover; height: 250px; background-size: cover; background-attachment: fixed">
            <h2 class="text-center  color" style="color: white" id="MENU">Layout</h2>
            <hr style="width: 50px; height: 1px; background: #8eb640;">
                <br>
                <p class="over" style="color: rgba(255,255,255,0.8); text-align: center">Check Plots Where you want</p>
            </hr>
        </div>
        <div class="container" style="margin-top: 40px">
            <div class="row">
                <div class="col-md-12">
                    <img src="Images/layout.jpg " style="height: 100%; width: 100%" class="img-fluid" alt="Responsive image">
                </div>
            </div>
        </div>

        <!--Services-->
        <!-- <div class="container " style="width:90%;height:90%;background-image: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url('Images/Home_img3.jpg');background-size: cover;background-position: center;color: #fff !important;margin: 90px auto;text-align: center; ">-->

        <!-- Services section -->
        <section id="what-we-do">
            <div class="container-fluid">
                <h2 class="section-title mb-2 h1">Our Services</h2>
                <p class="text-center text-muted h5">Having and managing a correct marketing strategy is crucial in a fast moving market.</p>
                <div class="row mt-5">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-1">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-2">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-3">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-4">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-5">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-6">
                                <h3 class="card-title">Special title</h3>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Services section -->
        <!--End Services-->

        <div class="container" style="margin-top: 25px">
            <div style="width: 100%">
                <iframe style="width: 100%; height: 300px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=godutai%20vidi%20gharkul%20solapur+(aarzo%20real%20estate)&amp;t=k&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
                <a href="https://www.mapsdirections.info/en/measure-map-radius/">Map radius measure</a>
            </div>
        </div>

        <!--contact section start-->
        <div class="contact-section">
            <div class="contact-info">
                <div><i class="fas fa-map-marker-alt"></i>Siddeshwar peth near Civil court, Solapur, India</div>
                <div><i class="fas fa-envelope"></i>Sirajhirapure9423@gmail.com</div>
                <div><i class="fas fa-phone"></i>+91 8177852485,9423535049 </div>
                <div><i class="fas fa-clock"></i>Mon - Fri 8:00 AM to 8:00 PM</div>
            </div>
            <div class="contact-form">
                <h2>Contact Us</h2>
                <form class="contact" action="" method="post">
                    <input type="text" name="name" class="text-box" placeholder="Your Name" required/>
                    <input type="email" name="email" class="text-box" placeholder="Your Email" required/>
                    <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                    <input type="submit" name="submit" class="send-btn" value="Send"/>
                </form>
            </div>
        </div>
        <!--contact section end-->
    </body>
    </html>

</asp:Content>