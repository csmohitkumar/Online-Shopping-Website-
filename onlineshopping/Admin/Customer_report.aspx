<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer_report.aspx.cs" Inherits="User_Reset_Password" Title="Untitled Page" %>

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
                Product Report<hr />
            </div>
            <hr />
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                Width="995px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="company_name" HeaderText="company_name" 
                        SortExpression="company_name" />
                    <asp:BoundField DataField="model_Number" HeaderText="model_Number" 
                        SortExpression="model_Number" />
                    <asp:BoundField DataField="stocks" HeaderText="stocks" 
                        SortExpression="stocks" />
                    <asp:BoundField DataField="original_price" HeaderText="original_price" 
                        SortExpression="original_price" />
                    <asp:BoundField DataField="memory" HeaderText="memory" 
                        SortExpression="memory" />
                    <asp:BoundField DataField="os" HeaderText="os" SortExpression="os" />
                    <asp:BoundField DataField="Screen" HeaderText="Screen" 
                        SortExpression="Screen" />
                    <asp:BoundField DataField="processor" HeaderText="processor" 
                        SortExpression="processor" />
                    <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                    <asp:BoundField DataField="s3g" HeaderText="s3g" SortExpression="s3g" />
                    <asp:BoundField DataField="bluetooth" HeaderText="bluetooth" 
                        SortExpression="bluetooth" />
                    <asp:BoundField DataField="gprs" HeaderText="gprs" SortExpression="gprs" />
                    <asp:BoundField DataField="wifi" HeaderText="wifi" SortExpression="wifi" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Onlineshopping %>" 
                
                SelectCommand="SELECT Product.company_name, Features.model_Number, Product.stocks, Product.original_price, Product.memory, Product.os, Features.Screen, Features.processor, Features.ram, Features.s3g, Features.bluetooth, Features.gprs, Features.wifi FROM Features INNER JOIN Product ON Features.model_Number = Product.model_Number">
            </asp:SqlDataSource>
            <br />
            <br />
            </td>
</tr></table>
</asp:Content>

