<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="HTML_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="container-fluid">
        <div class="row" id="horiCard">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body pb-2 m-2">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../images/Admin/MemberLogo.png" width="150" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your Profile</h3>
                                    <span>Account Status - </span>
                                    <asp:Label ID="Label" class="badge badge-pill badge-info" runat="server" Text="Your Status"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Full Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtname" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Date of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtdob" class="form-control" placeholder="Age" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtcontactno" class="form-control" placeholder="Contact No" runat="server" TextMode="Number"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Email ID</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtemail" class="form-control" placeholder="Email ID" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>State</label>
                                 <div class="form-group">
                                     <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="State" runat="server">
                                        <%-- <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Andhra Pradesh</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Arunachal Pradesh</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Assam</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Bihar</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Chhattisgarh</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Rajasthan</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Goa</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Gujrat</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Haryana</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Himachal Pradesh</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Jammu and Kashmir</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Jharkhand</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Karnataka</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Kerala</asp:ListItem>--%>
                                         <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                         <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                         <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                       <%--  <asp:ListItem Text="Select" Value="Select">Meghalaya</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Mizoram</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Nagaland</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Odisha</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Punjab</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Sikkim</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Tamil Nadu</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Telangana</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Tripura</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Uttar Pradesh</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">Uttarakhand</asp:ListItem>
                                         <asp:ListItem Text="Select" Value="Select">West Bengal</asp:ListItem>--%>
                                     </asp:DropDownList>
                                 </div>
                            </div>
                            <div class="col-md-4">
                              <label>City</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtcity" class="form-control" placeholder="City" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                              <label>Pin Code</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpincode" class="form-control" placeholder="Pin Code" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                                     </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                               <label>Full Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                         <div class="row">
                             <div class="col">
                               <center>
                                 <span class="badge badge-pill badge-info">User Credentials</span>
                                </center>
                              </div>
                          </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Member ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtmemberid" class="form-control" placeholder="ID" runat="server" ReadOnly="True"></asp:TextBox>
                                 </div>
                                </div>
                            <div class="col-md-4">
                                <label>Old Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtoldpassword" class="form-control" placeholder="Old Password" runat="server"  ReadOnly="True"></asp:TextBox>
                                 </div>
                              </div>
                            <div class="col-md-4">
                                <label>New Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtnewpassword" class="form-control" placeholder="New Password" runat="server" ></asp:TextBox>
                                 </div>
                              </div>
                            </div>

                           <div class="row">
                                   <div class="col-8 mx-auto">
                                       <div class="form-group">
                                           <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Update" OnClick="Button1_Click"/>
                                       </div>
                                       
                                   </div>
                                 </div>
                          </div>
                    </div>
                 <a href="HomePage.aspx"><< Back to Home</a><br /><br />
            </div>
       
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body pb-2 m-2">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../images/Loans/Loanlogo.png" width="150" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Loan Application</h3>
                                    <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" >Your Loan Info</asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                                </center>
                            </div>
                        </div>
                    </div>
                 </div>
             </div>
        </div>
    </div>


</asp:Content>

