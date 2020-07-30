<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="HTML_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/ContactUsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!--Jumbotron-->
<div class="jumbotron img-jumbo">
    <div class="container ">
        <div class="page-header">
            <div class="container align-center">
                <div class="row">
                    <div class="col-md-12 text-center align-center">
                        <h2>Contact Us</h2>
                        </div>
                        <nav aria-label="breadcrumb bg-dark text-white align-cener">
                   
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="HomePage.aspx">Home</a></li>
                                <li class="breadcrumb-item active">Contact Us</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>    
    </div>

<!--End of Jumbotron-->
    
<section class="section-padding contact-us-padding pb-5 pt-5">
<div class="container">
    <div class="row">
        <div class="col-md-7">
            <div class="get-in-touch">
                <h2>Get in Touch</h2>
                <p>We are here to clear all your doubts related loans and needs in financial crisis.</p>
            </div>
            <form action="mail.php" method="POST">
                <div class="row list-input">
                    <div class="col-md-6 mr0">
                        <div class="single-get-touch">
                            <input type="text" name="name" placeholder="Name" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="single-get-touch">
                            <input type="text" name="phone" placeholder="Phone" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="single-get-touch">
                            <input type="email" name="email" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="single-get-touch">
                           <textarea name="message" placeholder="Message" required></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="single-get-touch">
                           <button type="submit" name="submit" class="btn btn-primary btn-sm">SEND MESSAGE</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-5">
            <div class="choose-img">
                <img src="../images/ceo.png" alt="">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="single-contact-info">
                <div class="icon">
                    <img src="../images/map-pin-2.png" alt="">
                </div>
                <div class="content">
                    <p>Pocket EMI ,India <br> ASIA</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="single-contact-info">
                <div class="icon">
                    <img src="../images/envalope.png" alt="">
                </div>
                <div class="content">
                    <p>mail@pocketemi.com <br>
reply within 2 Hours</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="single-contact-info">
                <div class="icon">
                    <img src="../images/call.png" alt="">
                </div>
                <div class="content">
                    <p>+ 44-567-000-0124 <br>
Call @ 8.30am to 5.00pm </p>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<!--end of body tag-->



</asp:Content>

