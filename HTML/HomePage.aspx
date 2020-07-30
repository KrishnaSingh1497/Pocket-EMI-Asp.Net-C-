<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HTML_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/indexStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!--Slider-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="../images/s6-dark.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
              <h1 class="col-md-12 col-sm-12 col-xs-12">Are you looking for Loan?</h1>
              <p>To complete your needs..</p>
              <button class="btn btn-lg btn-outline-secondary">APPLY LOAN</button>
              <button class="btn btn-lg btn-secondary"><a href="ContactUs.aspx">CONTACT US </a></button>
          </div>
        </div>
          <div class="carousel-item">
              <div class="img-fluid"><img class="d-block w-100" src="../images/s2-dark.jpg" alt="Second slide"></div>

            <div class="carousel-caption d-none d-md-block">
              <h1>Lowest Interest on Loans</h1>
              <p>98% Customer Satisfied with us..</p>
          </div>
        </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="../images/s5.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
              <h1>Do you want to complete your Dream ?</h1>
              <p>This is the correct platform..</p>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>


  <!--end of slider-->

    <!-- start header bottom section -->
     <div class="header-bottom-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-header-bottom">
                        <div class="icon">
                            <img src="../images/clock.png" alt="" />
                        </div>
                        <div class="content">
                            <p>Quick & Easy Loan
                                <br> Approvals
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-header-bottom">
                        <div class="icon">
                            <img src="../images/user.png" alt="" />
                        </div>
                        <div class="content">
                            <p>5,000K Customers
                                <br> Satisfied
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-header-bottom">
                        <div class="icon">
                            <img src="../images/camera.png" alt="" />
                        </div>
                        <div class="content">
                            <p>No Prepayment or
                                <br> Hidden Fees</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-header-bottom">
                        <div class="icon">
                            <img src="../images/map-pin-2.png" alt="" />
                        </div>
                        <div class="content">
                            <p>200 branches all <br> 
over world</p>
                        </div>
                    </div>
                </div>                
                <!-- <div class="col-lg-3 col-md-6">
                    <div class="single-header-bottom mb0">
                        <div class="search-box">
                            <input type="text" name="s" placeholder="Enter your Zip Code">
                            <button type="submit" class="fa fa-search"></button>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
    <!-- end of header bottom section -->
 
  <!--Service-->
        <section class="service">
            <div class="text-center py-5">
                <h2 class="py-3">Service</h2>
                <div class="mx-auto heading-line"></div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 text-center">
                         <i class="fa fa-laptop" aria-hidden="true"></i>
                         <h4 class="py-3">Loans</h4>
                          <p class="pb-5">All types of Loans available here..</p>
                    </div>
                    <div class="col-md-4 text-center">
                            <i class="fa fa-briefcase" aria-hidden="true"></i>
                            <h4 class="py-3">Interest Rate</h4>
                             <p class="pb-5">Loans with best interset rate..</p>
                    </div>
                    <div class="col-md-4 text-center">
                            <i class="fa fa-calculator" aria-hidden="true"></i>
                            <h4 class="py-3">Documentation</h4>
                             <p class="pb-5">Less documentation process..</p>
                    </div>
                </div>
            </div>
        </section>
<!--End of Service-->
    
    <!--Fixed image -->
    <section>
        <div class="section box">
       <img src="images/about3.jpg" class="img-fluid" style="background-attachment:scroll; background-repeat:no-repeat;"/>
   </div>
        </section>



<!--Loan for your life-->
      <div class="container-fluid pb-5">
      <div class="text-center py-5">
        <h2 class="py-3">Loans for your life</h2>
        <div class="mx-auto heading-line"></div>
    </div>
      <!--Cards-->
<div class="card-group">
    <div class="row m-2">
        <div class="col-md-3 pb-5">
        <div class="card">
            <img class="card-img-top" src="../images/home.jpg" alt="Card image" style="width:100%">
     <div class="card-body">
           <h4 class="card-title">Home Loan</h4>           
      <p class="card-text">Get home loan to fulfill your dream of own home..</p>
      <a href="HomeLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

<div class="col-md-3">
     <div class="card">
        <img class="card-img-top" src="../images/Loans/personalLoan.jpg" alt="Card image" style="width:100%">
     <div class="card-body">
      <h4 class="card-title">Personal Loan</h4>          
          <p class="card-text">Get personal loan to fulfill your precious dreams..</p>
          <a href="PersonalLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

<div class="col-md-3">
    <div class="card">
        <img class="card-img-top" src="../images/gold.jpg" alt="Card image" style="width:100%">
     <div class="card-body">
      <h4 class="card-title">Gold Loan</h4>
          <p class="card-text">Get gold loan never let money be obstacle of your fashion</p>
          <a href="GoldLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

<div class="col-md-3">
     <div class="card">
        <img class="card-img-top" src="../images/Loans/carLoan.jpg" alt="Card image" style="width:100%">
     <div class="card-body">
      <h4 class="card-title">Car Loan</h4>           
          <p class="card-text">Ride with passion and make memory..</p>
          <a href="CarLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

<div class="col-md-3">
  <div class="card">
    <img class="card-img-top" src="../images/Loans/bikeLoan1.jpg" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">Bike Loan</h4>             
      <p class="card-text">Ride with passion..</p>
      <a href="BikeLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

 <div class="col-md-3">
  <div class="card">
    <img class="card-img-top" src="../images/Loans/educationLoan.jpg" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">Education Loan</h4>             
      <p class="card-text">Be professional of your version..</p>
      <a href="EducationalLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

<div class="col-md-3">
     <div class="card">
        <img class="card-img-top" src="../images/Loans/businessLoan.jpg" alt="Card image" style="width:100%">
     <div class="card-body">
      <h4 class="card-title">Business Loan</h4>             
          <p class="card-text">Be the boss of yourself..</p>
          <a href="BusinessLoan.aspx" class="btn btn-primary m-1">Get Details</a>
      <a href="LoanApplicationForm.aspx" class="btn btn-primary">Apply Loan</a>
    </div>
  </div>
</div>

</div>
</div>
          </div>


</asp:Content>

