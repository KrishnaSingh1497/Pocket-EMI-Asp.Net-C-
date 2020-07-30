<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management.master" AutoEventWireup="true" CodeFile="AdminLoan.aspx.cs" Inherits="HTML_AdminLoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Loan Category</h3>
                         </center>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                         <center>
                             <img src="../images/Admin/Loan2.png" width="150" />
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
                            <div class="col-md-4">
                               <label>Loan ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox ID="txtloanid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                         <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                       </div>
                                     </div>
                               </div>
                            <div class="col-md-8">
                              <label>Loan Category</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtloanname" class="form-control" placeholder="Loan" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5">
                               <label>Bank Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbankname" class="form-control" runat="server"></asp:TextBox>
                                      
                                     </div>
                               </div>
                            <div class="col-md-3">
                              <label>Duration</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtduration" class="form-control" placeholder="year" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                              <label>Interest Rate</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtinterest" class="form-control" placeholder="%" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                          <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" 
                                    runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                             <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" 
                                    runat="server" Text="Update" OnClick="Button3_Click"/>
                            </div>
                             <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" 
                                    runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                      </div> 
                        
                </div>  
             </div> 
                <a href="HomePage.aspx"><< Back to Home</a><br /><br />
                
        </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Loan Category List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <!--SQL data source-->
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectPocketEMIConnectionString %>" SelectCommand="SELECT * FROM [loan_master_tbl]"></asp:SqlDataSource>

                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="loan_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="loan_id" HeaderText="ID" ReadOnly="True" SortExpression="loan_id" />
                                        <asp:BoundField DataField="bank_name" HeaderText="Bank Name" SortExpression="bank_name" />
                                        <asp:BoundField DataField="loan_category" HeaderText="Loan Type" SortExpression="loan_category" />
                                        <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                                        <asp:BoundField DataField="interest_rate" HeaderText="Interest Rate" SortExpression="interest_rate" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>       

                          </div>
                    </div>

             </div>
         </div>
      </div>

</asp:Content>

