<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="User_home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="3"><div class="divwidth" >Order Now</div></td>
        </tr>
    </table>
   <div>
   
       <table class="style2" style="background-image: url('Image/background.jpeg')" 
           width="998">
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
           <tr>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   E-mail</td>
               <td>
                   <asp:TextBox ID="txtEmail" runat="server" Enabled="False" 
                       ontextchanged="TextBox1_TextChanged" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   Date</td>
               <td>
                   <asp:TextBox ID="txtdate" runat="server" Enabled="False" Width="206px"></asp:TextBox>
               </td>
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
               <td colspan="6" class="divwidth">
                   Billing Address</td>
           </tr>
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
           <tr>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   Address</td>
               <td>
                   <asp:TextBox ID="txtBaddress" runat="server" TextMode="MultiLine" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   City</td>
               <td>
                   <asp:TextBox ID="txtBcity" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   State</td>
               <td>
                   <asp:TextBox ID="txtBState" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   Country</td>
               <td>
                   <asp:TextBox ID="txtBCountry" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   Zip code</td>
               <td>
                   <asp:TextBox ID="txtBzip" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   Mobile Number</td>
               <td>
                   <asp:TextBox ID="txtBMobileNumber" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td colspan="6" class="divwidth" align="left">
                   <asp:CheckBox ID="chkOption" runat="server" AutoPostBack="True" 
                       ForeColor="Blue" Text="Shipping Address same as Billing Address" 
                       oncheckedchanged="chkOption_CheckedChanged" />
               </td>
           </tr>
           <tr>
               <td class="divwidth" colspan="6">
                   Shipping Address</td>
               
           </tr>
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
           <tr>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   Address</td>
               <td>
                   <asp:TextBox ID="txtSAddress" runat="server" TextMode="MultiLine" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   City</td>
               <td>
                   <asp:TextBox ID="txtSCity" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   State</td>
               <td>
                   <asp:TextBox ID="txtSState" runat="server" Width="206px"></asp:TextBox>
               </td>
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
               <td>
                   Country</td>
               <td>
                   <asp:TextBox ID="txtSCountry" runat="server" Width="206px"></asp:TextBox>
                </td>
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
               <td>
                   Zip Code</td>
               <td>
                   <asp:TextBox ID="txtSZip" runat="server" Width="206px"></asp:TextBox>
                </td>
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
               <td>
                   Mobile Number</td>
               <td>
                   <asp:TextBox ID="txtSMobileNumber" runat="server" Width="206px"></asp:TextBox>
                </td>
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
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   <asp:Button ID="btnOrder" runat="server" onclick="btnOrder_Click" 
                       Text="Payment" />
                </td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
</asp:Content>

