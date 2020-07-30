<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management.master" AutoEventWireup="true" CodeFile="AdminArticle.aspx.cs" Inherits="HTML_AdminArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <script type="text/javascript">
                 //datatable
                 $(document).ready(function () {
                     $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                 });

                 //image
                 function readURL(input) {
                     if (input.files && input.files[0]) {
                         var reader = new FileReader();

                         reader.onload = function (e) {
                             $('#imgview').attr('src', e.target.result);
                         };
                         reader.readAsDataURL(input.files[0]);
                     }
                 }
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
                           <h3>Articles</h3>
                         </center>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                         <center>
                            <img id="imgview" src="Article/article.png" height="150" width="100"/>
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
                                    <asp:FileUpload class="form-control" onchange="readURL(this);" ID="FileUpload1" runat="server"></asp:FileUpload>
                                </center>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-md-3">
                               <label>Article ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox ID="txtarticleid" class="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                         <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                       </div>
                                     </div>
                               </div>

                            <div class="col-md-9">
                              <label>Publisher Name</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpublishname" class="form-control" placeholder="Publisher Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                         </div>


                        <div class="row">
                            <div class="col-md-7">
                              <label>Article Type</label>
                                  <div class="form-group">
                                      <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                          <asp:ListItem Text="" Value=""></asp:ListItem>
                                          <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                          <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                          <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                          <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                          <asp:ListItem Text="Healthy living" Value="Healthy living"></asp:ListItem>
                                          <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                          <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                          <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                          <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                          <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
                                          <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                      </asp:DropDownList>
                                  </div>
                            </div>

                            <div class="col-md-5">
                              <label>Publish Date</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtpublishdate" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                             </div>
                        </div>


                         <div class="row">
                            <div class="col-md-12">
                              <label>Article Title</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtarticletitle" class="form-control" placeholder="Article Title" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                              <label>Article Description</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtarticledesc" class="form-control" placeholder="Article Description" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" 
                                    runat="server" Text="Add" OnClick="Button1_Click"  />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" 
                                    runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" 
                                    runat="server" Text="Delete" OnClick="Button2_Click"  />
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
                                    <h3>Articles List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ProjectPocketEMIConnectionString %>" 
                                    SelectCommand="SELECT * FROM [article_master_tbl]"></asp:SqlDataSource>
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="article_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="article_id" HeaderText="ID" ReadOnly="True" SortExpression="article_id" >
                                       
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                       
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("article_title") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Publisher :
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;&nbsp; |&nbsp; Article type:
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("article_type") %>'></asp:Label>
                                                                    &nbsp;&nbsp; |&nbsp; Published date:&nbsp;
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Descriptions:&nbsp;&nbsp;
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("article_description") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("article_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       
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

