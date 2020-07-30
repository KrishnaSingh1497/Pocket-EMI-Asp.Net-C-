<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management.master" AutoEventWireup="true" CodeFile="AdminBank.aspx.cs" Inherits="HTML_AdminBank" %>

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
                           <h3>Bank Details</h3>
                         </center>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                         <center>
                            <img src="../images/Admin/bank.png"  width="150" />
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
                              <label>Bank ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                     <asp:TextBox ID="txtbankid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                 </div>
                               </div>
                            </div>
                            <div class="col-md-4">
                               <label>Bank Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbankname" class="form-control" placeholder="Bank" runat="server"></asp:TextBox>
                                  </div>
                             </div>
                            <div class="col-md-4">
                              <label>Branch Name</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtbranchname" class="form-control" placeholder="Branch" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                              <label>State</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtstate" class="form-control" placeholder="State" runat="server"></asp:TextBox>
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
                                     <asp:TextBox ID="txtpincode" class="form-control" placeholder="PinCode" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                              <label>Full Postal Address</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Full Postal Address" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                                    runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                             <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" 
                                    runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                      </div> 
                </div>  
             </div> 
                <a href="Dashboard.aspx"><< Back to Home</a><br /><br />
                
        </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Bank Details List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <!--sqldata source-->


                                   <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectPocketEMIConnectionString %>" SelectCommand="SELECT * FROM [bank_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="bank_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="bank_id" HeaderText="Bank ID" ReadOnly="True" SortExpression="bank_id" />
                                        <asp:BoundField DataField="bank_name" HeaderText="Bank Name" SortExpression="bank_name" />
                                        <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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

