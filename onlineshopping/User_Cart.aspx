<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Cart.aspx.cs" Inherits="User_Cart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 23px;
            width: 400px;
        }
        .style6
        {
           
        }
        .style7
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:DataList ID="DataList1" runat="server" Width="1000px">
                    <ItemTemplate>
                        <table class="style2" align="center" width="100">
                            <tr>
                                <td colspan="2" >
                                   </td>
                                <td class="style5">
                                    </td>
                                <td>
                                    </td>
                                <td>
                                   </td>
                                <td>
                                   </td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="2" rowspan="4">
                                    <asp:Image ID="Image4" runat="server" Height="125px" Width="86px" ImageUrl='<%#getimage(DataBinder.Eval(Container.DataItem,"product_id").ToString()) %>'  />
                                </td>
                                <td class="style6">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style6">
                                    <asp:Label ID="lblCompanyname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"product_id").ToString() %>'></asp:Label>
                                </td>
                                <td align="center">
                                    <asp:DropDownList ID="cboQuentity" runat="server" AutoPostBack="True" onselectedindexchanged="cboQuentity_SelectedIndexChanged"
                                        >
                                    </asp:DropDownList>
                                </td>
                                <td align="center">
                                    <asp:Label ID="lblTotalPrice" runat="server" Text='<%# getpricePer(DataBinder.Eval(Container.DataItem,"product_id").ToString()) %>'></asp:Label>
                                    &nbsp; /-</td>
                                <td align="center">
                                <asp:Label ID="lblpriceperPice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"price").ToString() %>'></asp:Label>
                                    
                                    &nbsp;/-</td>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/remove.png" 
                                        Width="128px" onclick="ImageButton1_Click1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    </td>
                                <td>
                                    </td>
                                <td>
                                    </td>
                                <td>
                                    </td>
                                <td>
                                    </td>
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
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblmodelnumber1" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem,"product_id").ToString() %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td class="style6">
                                   
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderTemplate>
                        <table class="style2" Width="1000px">
                            <tr style="border-style: groove; border-width: 2; border-color: inherit; color: #FFFFFF; background-color: #800000;" 
                                align="center" bgcolor="Maroon" valign="top" >
                                <td width="125">
                                   <p style="font-family:Vijaya; font:30"> Image</p></td>
                                <td width="350">
                                    <p style="font-family:Vijaya; font:30">Model Number</p></td>
                                <td width="100">
                                    <p style="font-family:Vijaya; font:30">Quentity</p></td>
                                <td width="125">
                                   <p style="font-family:Vijaya; font:30"> Price per Quentity (RS) </p></td>
                                <td width="100">
                                    <p style="font-family:Vijaya; font:30">Total Price</p></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr align="left" bgcolor="Maroon"><td align="right" class="style7" colspan="4" 
                style="color: #FFFFFF; font-size: large; font-weight: bolder; font-style: italic; text-transform: uppercase">
            Total Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RS&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td></tr>
        <tr align="left" bgcolor="Maroon"><td>
            <asp:ImageButton ID="btnHome" runat="server" ImageUrl="~/Image/continue_shop.jpg" 
                onclick="btnHome_Click" Height="30px" Width="123px" />
            </td><td>
                &nbsp;</td><td>
                &nbsp;</td><td align="right">
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/order_now.jpg" onclick="ImageButton2_Click" Width="104px" />
            </td></tr>
    </table>
</asp:Content>

