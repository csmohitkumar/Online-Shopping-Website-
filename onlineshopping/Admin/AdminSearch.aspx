<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSearch.aspx.cs" Inherits="Admin_add2" Title="Untitled Page" %>

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
                       
                        <tr align="center">
                            <td align="left" class="style14" colspan="4">
                            <p style= "font-family:Shruti;color="Blue" >
                                   <asp:CheckBox ID="chkview" runat="server" Text="View the product" 
                                       ForeColor="Maroon" Checked="True" /></p>
                               <p style= "font-family:Shruti">  <asp:CheckBox ID="chkupdate" runat="server" 
                                       Text="Search and Update the Product details" ForeColor="Maroon"/></p>
                                &nbsp;</td>
                                
                        </tr>
                        <tr align="left">
                            <td align="left" class="style14">
                            </td>
                            <td align="left" class="style15">
                                &nbsp;<asp:Label ID="Label7" runat="server" Text="Model Number"></asp:Label></td>
                            <td class="style16">
                                <asp:DropDownList ID="cboModelNumberc" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="cboModelNumberc_CheckedChanged" 
                                    OnSelectedIndexChanged="cboModelNumberc_SelectedIndexChanged" Width="228px">
                                </asp:DropDownList>
                            </td>
                            <td class="style17">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Label ID="Label6" runat="server" Text="Company Name"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtCompanyName" runat="server" Width="228px"></asp:TextBox>
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
                                <asp:CheckBox ID="chkScreenSize" runat="server" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkScreenSize_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblScreenSize" runat="server"
                                    Text="Screen Size"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtScreenSize" runat="server" Width="228px" Enabled=false
                                    ></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                 <asp:CheckBox ID="chkProcessor" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkProcessor_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcamera" runat="server"
                                    Text="Processor"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtProcessor" runat="server" Width="228px" Enabled=false></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chkRam" runat="server"  AutoPostBack="True" 
            oncheckedchanged="chkRam_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRam" runat="server"
                                    Text="Ram"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtRam" runat="server" Width="228px" Enabled=false></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr >
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chk3G" runat="server" AutoPostBack="True" 
            oncheckedchanged="chk3G_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl3G" runat="server"
                                    Text="3G"></asp:Label></td>
                             <td class="style4">
                                 <asp:DropDownList ID="cbo3gkk" runat="server" Width="228px" Enabled=false>
                                 <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                 </asp:DropDownList>
                               
                            
                                &nbsp;</td>
                        </tr>
                        <tr align="left">
                            <td class="style10">
                                </td>
                            <td class="style11">
                                <asp:CheckBox ID="chkBluetooth" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkBluetooth_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBluetooth" runat="server"
                                    Text="Bluetooth"></asp:Label></td>
                             <td class="style4">
                                 <asp:DropDownList ID="cboBluetooth" runat="server" Width="228px" Enabled=false >
                                 <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                 </asp:DropDownList>
                            <td class="style13">
                            </td>
                        </tr>
                        
                        
                        <tr align="left">
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:CheckBox ID="chkGPRS" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkGPRS_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblGprs" runat="server"
                                    Text="GPRS"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtGprs" runat="server" Width="228px" Enabled=false 
                                    ></asp:TextBox>
                            <td class="style7">
                            </td>
                        </tr>
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chkWIFI" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkWIFI_CheckedChanged" />&nbsp;&nbsp;&nbsp;<asp:Label ID="lblWifi" runat="server"
                                    Text="wifi"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtwifi" runat="server" Width="228px" Enabled=false></asp:TextBox>
                            </td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        
                        <tr align="left">
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:CheckBox ID="chkBattery" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkchkBattery_CheckedChanged"/>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"
                                    Text="Battery Capacity"></asp:Label></td>
                            <td class="style4">
                                <asp:TextBox ID="txtBattery" runat="server" Width="228px" Enabled=false></asp:TextBox>
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
                                    <asp:Image ID="Image1" runat="server" width="150" Height="200"/></td>
                                    
                                <td class="style6">
                                    <asp:CheckBox ID="chkImageUpdate" runat="server" Text="Do you want to update the image" AutoPostBack="True" 
            oncheckedchanged="chkImageUpdate_CheckedChanged" />
                                </td>
                               <td class="style6">
                                   <asp:Label ID="lbluploadImage" runat="server" Text="Select Image" Visible="false"></asp:Label>
                               </td>
                               
                               <td class="style6">
                                  <asp:TextBox ID="txtFileUpload" runat="server" Visible="false"></asp:TextBox><asp:FileUpload ID="uploadImage" runat="server" Visible=false />
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
                                   <asp:Button ID="btnupdate" runat="server" Text="Submit" OnClick="btnUpdate_Click" Visible="false"/>
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

