<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="MemberSignUp.aspx.cs" Inherits="HTML_MemberSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto m-3">


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
                                    <h3>Member SignUp Page</h3>
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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please provide name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Date of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtdob" class="form-control" placeholder="Age" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdob" ErrorMessage="Enter age" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtdob" ErrorMessage="Min age 18 or Max age 50" ForeColor="#0066CC" MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtcontactno" class="form-control" placeholder="Contact No" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Enter Contact" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Invalid Contact" ForeColor="#0066CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Email ID</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtemail" class="form-control" placeholder="Email ID" runat="server" TextMode="Email"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="#0033CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter city" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-md-4">
                              <label>Pin Code</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpincode" class="form-control" placeholder="Pin Code" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpincode" ErrorMessage="Enter Pincode" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="Invalid Pincode" ForeColor="#0066CC" ValidationExpression="^([0-9]{6})$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                               <label>Full Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                            <div class="col-md-6">
                                <label>Member ID<small>( Mix of Name & ID*)</small></label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtmemberid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmemberid" ErrorMessage="Enter Member Id" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                                 </div>
                                </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>

                           <div class="row">
                                   <div class="col">
                                       <div class="form-group">
                                           <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                       </div>
                                       
                                   </div>
                                 </div>
                          </div>
                    </div>
                 <a href="MemberLogin.aspx"><< Back to Login</a><br /><br />
        </div>
    </div>
      </div>


</asp:Content>

