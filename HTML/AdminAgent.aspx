<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management.master" AutoEventWireup="true" CodeFile="AdminAgent.aspx.cs" Inherits="HTML_AdminAgent" %>

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
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                 <div class="row">
                     <div class="col">
                        <center>
                           <h3>Agent Details</h3>
                         </center>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                         <center>
                            <img src="../images/Admin/AgentLogo.png" width="150" />
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

                            <div class="col-md-3">
                               <label>AgentID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtagentid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                          <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
                                           <i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                     </div>
                               </div>

                            <div class="col-md-4">
                              <label>Full Name</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentname" class="form-control" placeholder="Full Name" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                              <label>Account Status</label>
                                <div class="form-group">
                                  
                                     <asp:TextBox ID="txtaccountstatus" class="form-control " placeholder="Status" runat="server" ReadOnly="True"></asp:TextBox>
                                       
                                       <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >
                                           <i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                       <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >
                                           <i class="fas fa-pause-circle"></i></asp:LinkButton>

                                       <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                           <i class="fas fa-times-circle"></i></asp:LinkButton>
                                     </div>
                                   
                                     </div>
                                </div>

                         <div class="row">
                            <div class="col-md-3">
                              <label>DOB</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentdob" class="form-control" placeholder="DOB" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                              <label>Contact No</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentcontact" class="form-control" placeholder="Contact No" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>

                            <div class="col-md-5">
                              <label>Email ID</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentemail" class="form-control" placeholder="Email ID" runat="server" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                              <label>State</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentstate" class="form-control" placeholder="State" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                              <label>City</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtagentcity" class="form-control" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                             </div>

                            <div class="col-md-4">
                              <label>Pin Code</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpincode" class="form-control" placeholder="Pin Code" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
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
                                     <asp:TextBox ID="txtbankname" class="form-control" placeholder="Bank" runat="server" ReadOnly="True"></asp:TextBox>
                                 </div>
                             </div>

                            <div class="col-md-4">
                               <label>Branch Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbranch" class="form-control" placeholder="Branch" runat="server" ReadOnly="True"></asp:TextBox>
                                 </div>
                             </div>

                            <div class="col-md-4">
                               <label>Pin Code</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtbankpincode" class="form-control" placeholder="Pin Code" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                 </div>
                             </div>

                          </div>

                        <div class="row">
                            <div class="col-12">
                              <label>Full Postal Address</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtaddress" class="form-control" placeholder="Full Postal Address" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" 
                                    runat="server" Text="Delete Agent Permanently" OnClick="Button2_Click"  />
                            </div>
                      </div>
                </div>  
             </div> 
                
        </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Agent List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectPocketEMIConnectionString %>" SelectCommand="SELECT * FROM [agent_master_tbl]"></asp:SqlDataSource>
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="agent_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="agent_id" HeaderText="ID" ReadOnly="True" SortExpression="agent_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="bank_name" HeaderText="Bank Name" SortExpression="bank_name" />
                                        <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" />
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

