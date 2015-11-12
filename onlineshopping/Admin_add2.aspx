<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_add2.aspx.cs" Inherits="Admin_add2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 129px;
        }
        .style4
        {
            width: 424px;
        }
        .style5
        {
            width: 129px;
            height: 25px;
        }
        .style6
        {
            width: 424px;
            height: 25px;
        }
        .style7
        {
            height: 25px;
        }
        .style8
        {
            width: 181px;
        }
        .style9
        {
            width: 181px;
            height: 25px;
        }
        .style10
        {
            width: 129px;
            height: 29px;
        }
        .style11
        {
            width: 181px;
            height: 29px;
        }
        .style12
        {
            width: 424px;
            height: 29px;
        }
        .style13
        {
            height: 29px;
        }
        .style14
        {
            width: 129px;
            height: 26px;
        }
        .style15
        {
            width: 181px;
            height: 26px;
        }
        .style16
        {
            width: 424px;
            height: 26px;
        }
        .style17
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" 
           >
           <WizardSteps>
               <asp:WizardStep ID="WizardStep1" runat="server" Title="Product Details">
                <div class="content">
                   
                    <table align="left" border="0" class="tablewidth">
                        <tr align="left">
                            <td align="left" class="style14">
                                </td>
                            <td align="left" class="style15">
                                <asp:Label ID="Label6" runat="server" Text="Company Name"></asp:Label>
                            </td>
                            <td class="style16">
                                <asp:TextBox ID="txtCompanyName" runat="server" Width="228px" 
                                    ></asp:TextBox>
                            </td>
                            <td class="style17">
                                </td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label7" runat="server" Text="Model Number"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtModelNumber" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label9" runat="server" Text="Stocks"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtStock" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr >
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label10" runat="server" Text="Discount"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="TxtDiscount" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style10">
                                </td>
                            <td class="style11">
                                <asp:Label ID="Label11" runat="server" Text="Original Price"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:TextBox ID="txtOriginalPrice" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td class="style13">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:Label ID="Label15" runat="server" Text="Memory"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtMemory" runat="server" Width="150px"></asp:TextBox>
                                <asp:DropDownList ID="cboMemory2" runat="server" Height="16px" 
                                    style="margin-right: 3px" Width="75px">
                                    <asp:ListItem>Mb</asp:ListItem>
                                    <asp:ListItem>Gb</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style7">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label14" runat="server" Text="OS"></asp:Label>
                            </td>
                            <td  class="style4">
                                <asp:DropDownList ID="cboOS" runat="server" Height="16px" Width="231px" 
                                    style="margin-right: 3px">
                                    <asp:ListItem>Android</asp:ListItem>
                                    <asp:ListItem>Window</asp:ListItem>
                                    <asp:ListItem>iOS</asp:ListItem>
                                    <asp:ListItem>Proprietary</asp:ListItem>
                                    <asp:ListItem>Blackberry</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label13" runat="server" Text="Status"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:DropDownList ID="cboStatus" runat="server" Height="17px" Width="230px">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Not Available</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                    </table>
                 
                   
                   </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep2" runat="server" Title="Feature">
                   <div class="content">
                      
                      
                       <table align="left" border="0" class="tablewidth">
                        <tr align="left">
                            <td align="left" class="style3">
                                &nbsp;</td>
                            <td align="left" class="style8">
                                <asp:CheckBox ID="chkScreenSize" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblScreenSize" runat="server"
                                    Text="Screen Size"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtScreenSize" runat="server" Width="228px" 
                                    ></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                 <asp:CheckBox ID="chkCamera" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcamera" runat="server"
                                    Text="Camera"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtCamera" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chkRam" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRam" runat="server"
                                    Text="Ram"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtRam" runat="server" Width="228px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr >
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chk3G" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl3G" runat="server"
                                    Text="3G"></asp:Label></td>
                            <td class="style4">
                                
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style10">
                                </td>
                            <td class="style11">
                                <asp:CheckBox ID="chkBluetooth" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBluetooth" runat="server"
                                    Text="Bluetooth"></asp:Label></td>
                            <td class="style12">
                               
                            </td>
                            <td class="style13">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:CheckBox ID="chkGPRS" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblGprs" runat="server"
                                    Text="GPRS"></asp:Label></td>
                            <td class="style6">
                               
                            </td>
                            <td class="style7">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chkWIFI" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblWifi" runat="server"
                                    Text="wifi"></asp:Label></td>
                            <td  class="style4">
                                
                            </td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        
                    </table>
                     
                      </div>
               </asp:WizardStep>
             
           <asp:WizardStep ID="WizardStep5" runat="server" Title="Select Image">
                   <div class="content">
                       <table>
                           <tr align="center">
                               <td class="style6">
                                   <asp:Label ID="lbluploadImage" runat="server" Text="Select Image"></asp:Label>
                               </td>
                               <td class="style6">
                                  <asp:TextBox ID="txtFileUpload" runat="server"></asp:TextBox><asp:FileUpload ID="uploadImage" runat="server" />
                               </td>
                               
                           </tr>
                           <tr align="left">
                               <td class="style6">
                               </td>
                               <td class="style6">
                               </td>
                               
                           </tr>
                           <tr align="left">
                               <td class="style6">
                               </td>
                               <td class="style6" align="right">
                                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                               </td>
                               
                           </tr>
                       </table>
                      
                      </div>
               </asp:WizardStep>
          </WizardSteps>
           <HeaderTemplate>
               <ul id="wizHeader">
                   <asp:Repeater ID="SideBarList" runat="server">
                       <ItemTemplate>
                           <li><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                               <%# Eval("Name")%></a> </li>
                       </ItemTemplate>
                   </asp:Repeater>
               </ul>
           </HeaderTemplate>
       </asp:Wizard>
</asp:Content>

