<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="LoanApplicationForm.aspx.cs" Inherits="HTML_LoanApplicationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-9 mx-auto m-3">


                <div class="card">
                    <div class="card-body pb-2 m-2">

                        <div class="row">
                            <div class  ="col">
                                <center>
                                    <img src="../images/Admin/login.png" width="150" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Loan Application Form</h3>
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
                                 <span class="badge badge-pill badge-success">Personal Information</span>
                                </center>
                              </div>
                          </div>

                        <div class="row">
                            <div class="col-md-2">
                               <label>Loan ID</label>
                                 <div class="form-group">
                                     <asp:Label ID='loanid' runat="server"></asp:Label>
                                 </div>
                            </div>
                            <div class="col-md-3">
                               <label>User ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtmemberid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmemberid" ErrorMessage="Enter Your ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-7">
                               <label>Full Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtname" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                       <div class="row">
                             <div class="col">
                               <center>
                                 <span class="badge badge-pill badge-info">Work Information</span>
                                </center>
                              </div>
                          </div>
                        
                        <div class="row">
                            <div class="col-md-5">
                               <label>Employer</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtemployer" class="form-control" placeholder="Title" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemployer" ErrorMessage="Enter Job Title" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-3">
                               <label>Office Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtofficecontact" class="form-control" placeholder="Contact No" runat="server" TextMode="Phone"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtofficecontact" ErrorMessage="Enter Contact" ForeColor="Red"></asp:RequiredFieldValidator>
                                 &nbsp;&nbsp;
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtofficecontact" ErrorMessage="Invalid contact" ForeColor="#0033CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                 </div>
                            </div>
                            <div class="col-md-4">
                              <label>Salary(Monthly)</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtsalary" class="form-control" placeholder="MOnthly Income" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsalary" ErrorMessage="Enter Salary" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col">
                               <center>
                                 <span class="badge badge-pill badge-warning">Guarantor Information</span>
                                </center>
                              </div>
                          </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Guardian Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtguardianname" class="form-control" placeholder="Guardian Name" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtguardianname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                               <label>Relationship</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtrelationship" class="form-control" placeholder="Relationship" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtrelationship" ErrorMessage="Enter Relationship" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>Guardian Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtguardiancontact" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Contact" ForeColor="Red" ControlToValidate="txtguardiancontact"></asp:RequiredFieldValidator>
&nbsp;
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtguardiancontact" ErrorMessage="Invalid contact" ForeColor="#0033CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                 </div>
                            </div>
                            <div class="col-md-8">
                               <label>Guardian Present Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Present Address" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-4">
                               <label>Status</label>
                                 <div class="form-group">
                                     <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" >
                                         <asp:ListItem Text="" Value=""></asp:ListItem>
                                         <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                         <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                         <asp:ListItem Text="Separated" Value="Separated"></asp:ListItem>
                                         <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                            </div>
                            <div class="col-md-4">
                               <label>Home</label>
                                 <div class="form-group">
                                     <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                         <asp:ListItem Text="" Value=""></asp:ListItem>
                                         <asp:ListItem Text="Own" Value="Own"></asp:ListItem>
                                         <asp:ListItem Text="Rent" Value="Rent"></asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select status" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-4">
                               <label>Home Member(Total Count)</label>
                                 <div class="form-group">
                                    <asp:TextBox ID="txttotalmember" class="form-control" placeholder="Total Member" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col">
                               <center>
                                 <span class="badge badge-pill badge-danger">Loan Information</span>
                                </center>
                              </div>
                          </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>Loan Type:</label>
                                 <div class="form-group">
                                     <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                         <asp:ListItem Text="" Value=""></asp:ListItem>
                                         <asp:ListItem Text="Home Loan" Value="Home Loan"></asp:ListItem>
                                         <asp:ListItem Text="Car Loan" Value="Car Loan"></asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select loan type" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-4">
                                <label>Loan Amount</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtloanamount" class="form-control" placeholder="Amount" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtloanamount" ErrorMessage="Enter Amt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtloanamount" ErrorMessage="Min 10K" ForeColor="#0033CC" MaximumValue="999999999" MinimumValue="10000" Type="Integer"></asp:RangeValidator>
                                 </div>
                                </div>
                            <div class="col-md-4">
                                <label>Duration(month)</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtloanduration" class="form-control" placeholder="Years" runat="server" TextMode="Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtloanduration" ErrorMessage="Enter Tenure" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                                     <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtloanduration" ErrorMessage="Min 12 month" ForeColor="#0033CC" MaximumValue="4000" MinimumValue="13"></asp:RangeValidator>
                                 </div>
                                </div>
                            </div>


                        <div class="row">
                            <div class="col-md-6">
                               <label>Interest Rate(%)</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtinterest" class="form-control" runat="server" placeholder="%"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtinterest" ErrorMessage="Enter Interest rate" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                            </div>
                            <div class="col-md-6">
                                <label>Issue Date</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtissuedate" class="form-control" placeholder="Current date" runat="server" TextMode="Date"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtissuedate" ErrorMessage="Current Date" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>

                         
                           <div class="row">
                                   <div class="col">
                                       <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Apply Loan" OnClick="Button1_Click"  />
                                       </div>
                                   </div>
                                 </div>
                          </div>
                    </div>
                 <a href="HomePage.aspx"><< Back to Home</a><br /><br />
        </div>
    </div>
      </div>


</asp:Content>

