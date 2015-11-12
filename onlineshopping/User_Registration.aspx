<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Registration.aspx.cs" Inherits="User_Registration" Title="Untitled Page" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" width="100%"><tr><td colspan="3"><div class="divwidth" >Sign Up</div></td></tr>
     	
     	
     	<tr><td><span lang="en-us">Name*:</span></td><td>
            <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter the value" ControlToValidate="txtname"></asp:RequiredFieldValidator>
            </td></tr>
     	<tr><td>Email <span lang="en-us">*:</span></td><td>
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter the value" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td></tr>
     	
     	<tr><td><span lang="en-us">Password*:</span></td><td>
            <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </td><td>
                                        
                                            
                                            
                                    <asp:RegularExpressionValidator ID="RangeValidator1" runat="server"    
                                    ErrorMessage="Password length must be between 8 to 20 characters"
                                    ControlToValidate="txtPassword"    
                                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,20}$" />

            </td></tr>
     	
     	<tr><td><span lang="en-us">Retype Password*:</span></td><td>
            <asp:TextBox ID="cbo" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </td><td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password not matched" ControlToCompare="txtPassword" 
                    ControlToValidate="cbo"></asp:CompareValidator>
            </td></tr>
     	<tr><td><span lang="en-us">Select security question:*</span></td><td>
            <asp:DropDownList ID="cboquestion" runat="server" Width="200px">
                <asp:ListItem>What is your birth place?</asp:ListItem>
                <asp:ListItem>What is your&#39;s favourite game?</asp:ListItem>
                <asp:ListItem>What was your pets first name?</asp:ListItem>
                <asp:ListItem>What primary school did you go to?</asp:ListItem>
            </asp:DropDownList>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="cboquestion" ErrorMessage="Please select Question"></asp:RequiredFieldValidator>
            </td></tr>
     	<tr><td><span lang="en-us">Answer*:</span></td><td>
            <asp:TextBox ID="txtAnswer" runat="server" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="Please enter the value" ControlToValidate="txtAnswer"></asp:RequiredFieldValidator>
            </td></tr>
     	<tr><td colspan="2" align="center">
            <eo:Captcha ID="Captcha1" runat="server">
            </eo:Captcha>
            <td>
                &nbsp;</td>
            </tr>
            <tr><td colspan="3" align="left">
                <asp:CheckBox ID="chkTerms" runat="server" Text="Accept Terms and Condition" 
                    AutoPostBack="false"  />
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </td></tr>
             <tr><td  align="center">
                 <asp:Button ID="btnsignup" runat="server" Text="Sign up" 
                     onclick="btnsignup_Click" style="height: 26px" />
                 </td><td align="center">
                     <asp:Button ID="btnreset" runat="server" Text="Reset" 
                         onclick="btnreset_Click" />
                 </td><td align="center">
                     <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click" />
                 </td></tr>
     	</table>
     	
     	
     	
     	
     	
     	
     	
     	</td></tr></table>
</asp:Content>

