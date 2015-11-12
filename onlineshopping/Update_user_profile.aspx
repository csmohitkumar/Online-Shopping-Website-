<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update_user_profile.aspx.cs" Inherits="User_Reset_Password" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table id="Table6" align="center" bgcolor="White" width="1000" runat="server" 
            class="style1">
     	<tr><td  background= "Image/background.jpeg" valign="top">
     	<hr /><hr />
        
            <div class="divwidth" style="font-size:18px">User Profile<hr /></div>
                
                <hr /><hr /><hr />
            <table width="50%" align="center""><tr><td class="style2">Name:</td>
            <td class="style2">
                <asp:TextBox ID="txtName" runat="server" CssClass="style2" Height="23px" 
                    Width="204px"></asp:TextBox>
            </td></tr>
              <tr><td >Password:</td>
              <td>
                  <asp:TextBox ID="txtPassword" runat="server" Width="202px"></asp:TextBox>
                  </td></tr>
              <tr><td ><span lang="en-us">Security question</span>: </td>
              <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                <asp:ListItem>What is your birth place?</asp:ListItem>
                <asp:ListItem>What is your&#39;s favourite game?</asp:ListItem>
                <asp:ListItem>What was your pets first name?</asp:ListItem>
                <asp:ListItem>What primary school did you go to?</asp:ListItem>
            </asp:DropDownList>
                  </td></tr>
                    <tr><td><span lang="en-us">Answer</span></td><td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1" Width="204px" 
                            Height="26px" style="margin-top: 0px"></asp:TextBox>
                        </td></tr>
                    <td colspan="2">
            <br />
            <br />
            </td></tr><tr><td colspan="2" align="right">
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"  />
            <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click"  /></td></tr>
            <tr><td>
                &nbsp;</td><td>
                    &nbsp;</td></tr>
            <tr><td>
                &nbsp;</td><td>
                    &nbsp;</td></tr>
               <tr><td></td><td><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </span>
                   </td></tr>
        
         
         </td>  
        </tr>
     </table>
</asp:Content>

