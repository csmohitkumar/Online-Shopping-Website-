<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_home.aspx.cs" Inherits="User_home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td width="200" valign="top">
                <table class="style2">
                    <tr>
                        <td class="divwidth" style="border: thin groove #800000;">
                            BRAND</td>
                    </tr>
                    <tr>
                        <td style="border: thin groove #800000;">
                            <asp:CheckBoxList ID="chklstBrand" runat="server" AutoPostBack="True" onselectedindexchanged="chklstBrand_SelectedIndexChanged" 
                               >
                            </asp:CheckBoxList>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="divwidth" style="border: thin groove #800000;">
                            PRICE</td>
                    </tr>
                    <tr>
                        <td style="border: thin groove #800000;">
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
                                <asp:ListItem>0-5000</asp:ListItem>
                                <asp:ListItem>5000-10000</asp:ListItem>
                                <asp:ListItem>10000-20000</asp:ListItem>
                                <asp:ListItem>20000-30000</asp:ListItem>
                                <asp:ListItem>Above 30000</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />
                            <br />
                            <br />
                            <br />
<br /><br /><br />
                            <br />
                        </td>
                    </tr>
                    
                    
                </table>
            </td>
            <td align="center" valign="top" style="border: thin groove #800000">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                    RepeatDirection="Horizontal" Width="820px">
                    <ItemTemplate>
                        <table class="style2" align="center">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
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
                            <tr align="center">
                                <td>
                                    &nbsp;</td>
                                <td align="center" colspan="4" rowspan="5">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="224px" 
                                        Width="160px" 
                                        ImageUrl='<%# DataBinder.Eval(Container.DataItem,"image_path").ToString() %>' 
                                        onclick="ImageButton1_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2">
                                    <asp:Label ID="lblCompanyName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"company_name").ToString() %>'></asp:Label>&nbsp;&nbsp;
                                    <asp:Label ID="lblModelNumber" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"model_Number").ToString() %>'> </asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td class="style3">
                                </td>
                                <td class="style3">
                                </td>
                                <td class="style3" colspan="3">
                                    <asp:Label ID="Label7" runat="server" Width="30px">Rs:  </asp:Label>
                                    <asp:Label ID="lblprice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"original_price").ToString() %>'></asp:Label>
                                </td>
                                <td class="style3">
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="style3">
                                </td>
                                <td class="style3">
                                </td>
                                <td class="style3" colspan="3">
                                    <asp:Label ID="Label8" runat="server" Text="Discount: "></asp:Label>
                                    <asp:Label ID="lblDiscount" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"discount").ToString() %>'></asp:Label>
                                    &nbsp;<asp:Label ID="Label9" runat="server" Text="  %"></asp:Label></td>
                                <td class="style3">
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2">
                                    <asp:Label ID="lblProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem,"model_Number").ToString() %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
   <div>
   
   </div>
</asp:Content>

