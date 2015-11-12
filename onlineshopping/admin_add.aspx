<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_add.aspx.cs" Inherits="admin_add" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
        .current a.rfdSkinnedButton
        {
            background-position: right -44px !important;
        }
         
        .current a.rfdSkinnedButton .rfdDecorated
        {
            background-position: left -66px !important;
        }
 
         .current a.rfdSkinnedButton:active,
         .current a.rfdSkinnedButton:focus
        {
            background-position: right -88px !important;
        }
         
        .current a.rfdSkinnedButton:active .rfdDecorated,
        .current a.rfdSkinnedButton:focus .rfdDecorated
        {
            background-position: left -110px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
            
            
            
    <asp:Wizard ID="main" runat="server" Width="576px" Height="350px" ActiveStepIndex="0" 
                    BorderColor="#CC0066" BorderStyle="Solid" 
                    style="margin-bottom: 0px" 
                   >
        <SideBarTemplate>
            <asp:DataList runat="Server" ID="SideBarList" ItemStyle-HorizontalAlign="Left">
                <ItemTemplate>
                    <asp:Button runat="server" ID="SideBarButton" Width="160px" />
                </ItemTemplate>
                <SelectedItemTemplate>
                    <div class="current">
                        <asp:Button ID="SideBarButton" runat="server" Width="160px" />
                    </div>
                </SelectedItemTemplate>
            </asp:DataList>
        </SideBarTemplate>
        <StepStyle BackColor="#F4F4FF" BorderColor="White" BorderStyle="None" />
        <NavigationStyle BackColor="#CCCCCC" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Add details">
                <table class="style2">
                    <tr valign="top">
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td align="center" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" StepType="Step" 
                Title="Features">
                Step2</asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" StepType="Finish" 
                Title="Images">
                Step3</asp:WizardStep>
        </WizardSteps>
        <SideBarStyle BackColor="#336600" BorderColor="White" />
    </asp:Wizard>     
            
            
            
            </td>
        </tr>
   </table>
</asp:Content>

