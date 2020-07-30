<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management.master" AutoEventWireup="true" CodeFile="AgentLoanDoc.aspx.cs" Inherits="HTML_AgentLoanDoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div class="container-fluid">
        <div class="row">
            <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class  ="col">
                                <center>
                                    <img src="../images/Admin/AgentLogo.png" width="150" />
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
                            <div class="col-md-3">
                               <label>LoanID</label>
                                 <div class="form-group">
                                   <asp:TextBox ID="txtloanid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                     <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" >
                                           <i class="fas fa-check-circle"></i></asp:LinkButton>
                                 </div>
                            </div>
                            <div class="col-md-3">
                               <label>UserID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtmemberid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-6">
                               <label>Loan Status</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtloanstatus" class="form-control" placeholder="Status" runat="server"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  >
                                           <i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                       <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >
                                           <i class="fas fa-pause-circle"></i></asp:LinkButton>

                                       <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >
                                           <i class="fas fa-times-circle"></i></asp:LinkButton>
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
                            <div class="col-md-4">
                               <label>Employer</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtemployer" class="form-control" placeholder="Title" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-4">
                               <label>Office No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtcontactoffice" class="form-control" placeholder="Contact" runat="server" TextMode="Phone"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-4">
                              <label>Salary(Monthly)</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtsalary" class="form-control" placeholder="MOnthly Income" runat="server" TextMode="Number"></asp:TextBox>
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
                                     <asp:TextBox ID="txtguardian" class="form-control" placeholder="Guardian Name" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-6">
                               <label>Relationship</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtrelationship" class="form-control" placeholder="Relationship" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>Contact No</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtguardiancontact" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-8">
                               <label>Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Present Address" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-4">
                               <label>Status</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtstatus" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-4">
                               <label>Home</label>
                                 <div class="form-group">
                                      <asp:TextBox ID="txthome" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-4">
                               <label>Home Member</label>
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
                                      <asp:TextBox ID="txtloantype" class="form-control" placeholder="Category" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-4">
                                <label>Loan Amount</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtloanamt" class="form-control" placeholder="Amount" runat="server"></asp:TextBox>
                                 </div>
                                </div>
                            <div class="col-md-4">
                                <label>Duration(month)</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtloantenure" class="form-control" placeholder="Years" runat="server" TextMode="Password"></asp:TextBox>
                                 </div>
                                </div>
                            </div>


                        <div class="row">
                            <div class="col-md-6">
                               <label>Interest Rate(%)</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtinterest" class="form-control" runat="server" placeholder="%"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="col-md-6">
                                <label>Issue Date</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtissue" class="form-control" placeholder="Current date" runat="server" TextMode="Date"></asp:TextBox>
                                 </div>
                                </div>
                            </div>

                         
                           <div class="row">
                                   <div class="col">
                                       <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" OnClick="Button1_Click"  />
                                       </div>
                                   </div>
                                 </div>
                          </div>
                    </div>
                 <a href="#"><< Back to Home</a><br /><br />
        </div>
    </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Application List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectPocketEMIConnectionString %>" SelectCommand="SELECT * FROM [loan_application_form]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="loan_id">
                                    <Columns>
                                        <asp:BoundField DataField="loan_id" HeaderText="Loan ID" SortExpression="loan_id" ReadOnly="True" />
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="loan_type" HeaderText="Loan Type" SortExpression="loan_type" />
                                        <asp:BoundField DataField="loan_status" HeaderText="Loan Status" SortExpression="loan_status" />
                                    </Columns>
                                   
                                </asp:GridView>
                            </div>
                        </div>       

                          </div>
                    </div>

             </div>
         </div></div>

</asp:Content>

