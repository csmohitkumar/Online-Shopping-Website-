<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 27px;
        }
        .style4
        {
            width: 176px;
            height: 32px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            width: 655px;
        }
        .style7
        {
            height: 32px;
        }
        .style8
        {
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" background="Image/back.jpg" 
        style="width: 100%; height: 736px" width="1000">
        <tr>
            <td class="style3" colspan="2">
            </td>
            <td class="style3" colspan="2">
            </td>
        </tr>
        <tr>
            <td rowspan="3">
                &nbsp;</td>
            <td class="style6" rowspan="3">
                &nbsp;</td>
            <td>
            <br /><br /><br /><br />
            </td>
            <td rowspan="3">
                <br /><br /><br />&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table id="Table7" runat="server" align="center" border="2" 
                    
                    style="border: 2px solid #FF0000; height: 202px; width: 395px; margin-left: 0px;" >
                    <tr>
                        <td class="style4"><p style="color=white">
                            &nbsp;
                            <asp:Label ID="Label6" runat="server" ForeColor="White" Text="E-Mail"></asp:Label>
                            </p></td>
                        <td align="center" class="style7">
                            <asp:TextBox ID="txtUsername" runat="server" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Password"></asp:Label>
                        </td>
                        <td align="center" class="style5">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <a href="User_Registration.aspx">
                            <p style="font-family:Courier New; font-size:14px; text-decoration:none; color:Maroon; margin-top: 0px;">
                                <i>New user sign up</i></p>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <a href="User_Reset_Password.aspx">
                            <p style="font-family:Courier New; font-size:14px; text-decoration:none; color:Maroon">
                                <i>Forgot password</i></p>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="Button1" runat="server" BorderColor="#99FF99" 
                                BorderStyle="Groove" BorderWidth="2px" Text="Sign in" 
                                onclick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" BorderColor="#99FF33" 
                                BorderStyle="Groove" BorderWidth="2px" Text="Cancel" />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

