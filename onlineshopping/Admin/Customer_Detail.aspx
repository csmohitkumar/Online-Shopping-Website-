<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer_Detail.aspx.cs" Inherits="User_Reset_Password" Title="Untitled Page" %>

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
                Customer Report<hr />
            </div>
            <hr />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                Width="995px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                        SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" 
                        SortExpression="password" />
                    <asp:BoundField DataField="question" HeaderText="question" 
                        SortExpression="question" />
                    <asp:BoundField DataField="answer" HeaderText="answer" 
                        SortExpression="answer" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
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
                DeleteCommand="DELETE FROM [Customer] WHERE [email] = @email" 
                InsertCommand="INSERT INTO [Customer] ([Name], [email], [password], [question], [answer], [status]) VALUES (@Name, @email, @password, @question, @answer, @status)" 
                SelectCommand="SELECT * FROM [Customer]" 
                UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [password] = @password, [question] = @question, [answer] = @answer, [status] = @status WHERE [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="question" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="question" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            </td>
</tr></table>
</asp:Content>

