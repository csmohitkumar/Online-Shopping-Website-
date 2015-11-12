<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_purchase_history.aspx.cs" Inherits="User_Reset_Password" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table id="Table6" align="center" bgcolor="White" width="1000" runat="server" 
            class="style1">
    <tr>
        <td background="Image/background.jpeg" valign="top">
            <hr />
            <hr />
            <div class="divwidth" style="font-size: 18px">
                Customer Purchase History<hr />
            </div>
            <hr />
            <hr />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                Width="1011px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <table class="style2">
                        <tr>
                            <td>
                                ORDER ID</td>
                            <td>
                                USER NAME</td>
                            <td>
                                NAME</td>
                            <td>
                                DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                MODEL NO.</td>
                            <td>
                                PRICE</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    &nbsp;<table class="style2">
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"order_id").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label10" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"email").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"Name").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"date").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"product_id").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"quentity").ToString() %>'></asp:Label>
                            </td>
                           
                           
                            <td>
                                <asp:Label ID="Label12" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"price").ToString() %>'></asp:Label>
                            </td>
                           
                           
                        </tr>
                    </table>
                    &nbsp;&nbsp;
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <br />
            <br />
            </td>
</tr></table>
</asp:Content>

