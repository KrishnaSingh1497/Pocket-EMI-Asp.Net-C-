 <%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="AgentSignUp.aspx.cs" Inherits="HTML_AgentSignUp" %>

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
                                    <img src="../images/Admin/AgentLogo.png" width="150"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Agent SignUp</h3>
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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Date of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtdob" class="form-control" placeholder="Age" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdob" ErrorMessage="Please enter dob" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtdob" ErrorMessage="Min age must 18" ForeColor="#0066CC" MaximumValue="48" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtcontactno" class="form-control" placeholder="Contact No" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Please enter Contact" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Invalid Number" ForeColor="#0066CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                              <label>Email ID</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtemail" class="form-control" placeholder="Email ID" runat="server" TextMode="Email"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter Email id" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="#0066CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity" ErrorMessage="Please enter city" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-md-4">
                              <label>Pin Code</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpincode" class="form-control" placeholder="Pin Code" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode" ErrorMessage="Enter Pin code" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="Invalid Pincode" ForeColor="#0066CC" ValidationExpression="^([0-9]{6})$"></asp:RegularExpressionValidator>
                                </div>
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
                                 <span class="badge badge-pill badge-info">Bank Information</span>
                                </center>
                              </div>
                          </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                               <label>Bank Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbankname" class="form-control" placeholder="Bank Name" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbankname" ErrorMessage="Enter Bank" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                            <div class="col-md-4">
                               <label>Branch</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbranch" class="form-control" placeholder="Branch" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtbranch" ErrorMessage="Enter Branch" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                            <div class="col-md-4">
                               <label>Pin Code<small>(Bank)</small></label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbankpincode" class="form-control" placeholder="Pin Code" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtbankpincode" ErrorMessage="Enter Pincode" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 &nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtbankpincode" ErrorMessage="Invalid Pincode" ForeColor="#0066CC" ValidationExpression="^([0-9]{6})$"></asp:RegularExpressionValidator>
                                 </div>
                             </div>

                          </div>

                        <div class="row">
                            <div class="col">
                               <label>Full Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                <label>Agent ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtagentid" class="form-control" placeholder="Agent ID" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtagentid" ErrorMessage="Please enter agent id" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please set password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>

                           <div class="row">
                                   <div class="col">
                                       <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click"  />
                                       </div>
                                   </div>
                                 </div>
                          </div>
                    </div>
                 <a href="AgentLogin.aspx"><< Back to Login</a><br /><br />
        </div>
    </div>
  </div>


</asp:Content>

