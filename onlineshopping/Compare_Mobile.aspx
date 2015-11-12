<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Compare_Mobile.aspx.cs" Inherits="Admin_Admin_Delete_inventory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            border: 1px solid #800000;
        }
        .style4
        {
            height: 30px;
        }
        .style5
        {
            height: 30px;
            width: 365px;
        }
        .style6
        {
            width: 365px;
        }
        .style7
        {
            width: 365px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style3" width="256">
        <tr>
           <td colspan="4"><div class="divwidth" >&nbsp; Comparison</div></td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label13" runat="server" Enabled="False" Text="Model Number"></asp:Label>
                1</td>
            <td class="style4" width="256">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="24px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="213px" style="margin-left: 0px">
                    <asp:ListItem>Select Id</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                Model&nbsp; Numer2</td>
            <td class="style4">
                <asp:DropDownList ID="cbomodel2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="cbomodel2_SelectedIndexChanged" Width="213px">
                    <asp:ListItem>Select ID</asp:ListItem>
                </asp:DropDownList>
&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image4" runat="server" Height="200px" Width="150px" />
            </td>
            <td align="center">
                <asp:Image ID="Image6" runat="server" Height="180px" ImageUrl="~/Image/vs.jpg" 
                    Width="200px" />
            </td>
            <td align="center">
                <asp:Image ID="Image5" runat="server" Height="200px" Width="150px" />
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <table class="style2">
                    <tr>
                        <td>
                <asp:Label ID="Label7" runat="server" Enabled="False" Text="Company Name"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label8" runat="server" Enabled="False" Text="Discount"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label12" runat="server" Enabled="False" Text="Price"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label10" runat="server" Text="Stocks" Enabled="False"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Screen</td>
                        <td>
                <asp:TextBox ID="TextBox13" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Processor</td>
                        <td>
                <asp:TextBox ID="TextBox14" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            RAM</td>
                        <td>
                <asp:TextBox ID="TextBox15" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3G</td>
                        <td>
                <asp:TextBox ID="TextBox16" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Bluetooth</td>
                        <td>
                <asp:TextBox ID="TextBox17" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gprs</td>
                        <td>
                <asp:TextBox ID="TextBox18" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            WIFI</td>
                        <td>
                <asp:TextBox ID="TextBox19" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Battery Capacity</td>
                        <td>
                <asp:TextBox ID="TextBox20" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8" colspan="2">
                <table class="style2">
                    <tr>
                        <td>
                            Company Name</td>
                        <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="181px" Enabled="False" AutoPostBack="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Discount</td>
                        <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price</td>
                        <td>
                <asp:TextBox ID="TextBox11" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Stocks</td>
                        <td>
                <asp:TextBox ID="TextBox12" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Screen</td>
                        <td>
                <asp:TextBox ID="TextBox21" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Processor</td>
                        <td>
                <asp:TextBox ID="TextBox22" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            RAM</td>
                        <td>
                <asp:TextBox ID="TextBox23" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3G</td>
                        <td>
                <asp:TextBox ID="TextBox24" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Bluetooth</td>
                        <td>
                <asp:TextBox ID="TextBox25" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            GPRS</td>
                        <td>
                <asp:TextBox ID="TextBox26" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            WIFI</td>
                        <td>
                <asp:TextBox ID="TextBox27" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Battery Capacity</td>
                        <td>
                <asp:TextBox ID="TextBox28" runat="server" Width="181px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>


</asp:Content>

