﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="MemberLogin.aspx.cs" Inherits="HTML_MemberLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto m-3">


                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../images/Admin/MemberLogo.png" width="150"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
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
                                <label>Member ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtmemberid" class="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmemberid" ErrorMessage="Please Enter Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>

                                <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>

                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click"  />
                                </div>

                                <div class="form-group">
                                    <a href="MemberSignUp.aspx">
                                        <input id="Button2" class="btn btn-info btn-block btn-lg" type="button" value="Sign Up" />
                                    </a>
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

