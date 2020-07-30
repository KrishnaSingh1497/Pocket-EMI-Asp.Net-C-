<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="HTML_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <p>
        &nbsp;</p>
    <p>
        <table style="width: 100%; border: 1px solid #c0c0c0">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" CssClass="align-content-center" Font-Bold="True" Font-Italic="False" Font-Names="times New Roman" Font-Size="X-Large" ForeColor="#003366" Text="Login Page"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="484px">
        <br />
        <div class="container-fluid">
        <table border="1" class="table table-striped table-bordered .table-responsive{-sm|-md|-lg|-xl}" style="width: 99%; height: 127px; border: 1px solid #c0c0c0; margin:15px; padding-bottom:10px">
            <tr>
                <td style="width: 277px">
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageAlign="Middle" ImageUrl="~/images/Admin/AdminLogo.png" PostBackUrl="~/HTML/AdminLogin.aspx" style="margin:5px 5px 5px 152px" Width="200px" />
                </td>
                <td style="width: 306px">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="~/images/Admin/AgentLogo.png" PostBackUrl="~/HTML/AgentLogin.aspx" style="margin:5px 5px 5px 144px" Width="200px" />
                </td>
                <td style="width: 312px">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="200px" ImageUrl="~/images/Admin/login.png" PostBackUrl="~/HTML/MemberLogin.aspx" style="margin:5px 5px 5px 136px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td style="width: 277px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Admin Login"></asp:Label>
                </td>
                <td style="width: 306px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Agent Login"></asp:Label>
                </td>
                <td style="width: 312px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Member Login"></asp:Label>
                </td>
            </tr>
        </table>
            </div>
       
    </asp:Panel>



</asp:Content>

