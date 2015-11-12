<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Mobile_details.aspx.cs" Inherits="User_Mobile_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 295px;
        }
        .style5
        {
            height: 238px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            height: 100px;
        }
        .style8
        {
            height: 23px;
        }
    .style9
    {
        width: 16px;
    }
    .style10
    {
        height: 23px;
        width: 16px;
    }
    .style11
    {
        height: 26px;
        width: 95px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" Width="1000px">
        <ItemTemplate>
            <table class="style3" align="center">
                <tr>
                    <td colspan="2" align="center" class="style5" rowspan="12" 
                        style="border: thin groove #800000;">
                        <asp:Image ID="Image4" runat="server" Height="250px" Width="200px" 
                            ImageUrl='<%# DataBinder.Eval(Container.DataItem,"image_path").ToString() %>' />
                    </td>
                  
                    <td align="center" colspan="4" valign="top" class="style7" 
                        style="border: thin groove #800000;">
                        
                        <asp:Label ID="lblCompanyName" Font-Bold="True" Font-Names="Vijaya" 
                            Font-Size="XX-Large" Font-Underline="True" 
                    ForeColor="Black" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"company_name").ToString() %>'></asp:Label>
                    
                        <asp:Label ID="lblModName" Font-Bold="True" Font-Names="Vijaya" 
                            Font-Size="XX-Large" Font-Underline="True" 
                    ForeColor="Black" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"model_Number").ToString() %>'></asp:Label>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Names="Brush Script MT" Font-Size="X-Large" Font-Underline="True" 
                        ForeColor="Maroon" Text="Our Price: RS  "></asp:Label>
                        
                    <asp:Label ID="lblPrice1" Font-Bold="True" Font-Italic="True" 
                            Font-Names="Brush Script MT" Font-Size="X-Large" Font-Underline="True" 
                    ForeColor="Maroon" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"original_price").ToString() %>'></asp:Label>
                </td>
                </tr>

                
                <tr>
                 <td style="border: medium groove #800000">
        
                        <asp:Label ID="Label6" runat="server" Text="OS:        "></asp:Label>
        
                 </td>
                    <td style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblos" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"os").ToString() %>'></asp:Label>
                    </td>
                </tr>
                
                <tr>
                 <td style="border: medium groove #800000">
        
                        <asp:Label ID="Label7" runat="server" Text="Memory"></asp:Label>
        
                        :</td>
                    <td class="style9" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblMemory" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"memory").ToString() %>'></asp:Label>
                    </td>
                </tr>
                
                <tr>
                 <td style="border: medium groove #800000">
        
                        Screen:</td>
                    <td class="style9" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"Screen").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                 <td style="border: medium groove #800000">
                 <asp:Label ID="Label1" runat="server" Text="Processor:        "></asp:Label>
                </td>
                    <td class="style9" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel0" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"processor").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                 <td style="border: medium groove #800000">
                 <asp:Label ID="Label2" runat="server" Text="RAM:        "></asp:Label>
                </td>
                    <td class="style9" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel1" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"ram").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                 <td style="border: medium groove #800000">
                 <asp:Label ID="Label3" runat="server" Text="3G Support:        "></asp:Label>
               </td>
                    <td class="style9" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel2" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"s3g").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                 <td class="style8" style="border: medium groove #800000">
                 <asp:Label ID="Label4" runat="server" Text="BlueTooth:        "></asp:Label>
                </td>
                    <td class="style10" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel3" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"bluetooth").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="border: medium groove #800000">
                    <asp:Label ID="Label5" runat="server" Text="GPRS:        "></asp:Label>
                    </td>
                    <td class="style10" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblmodel4" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"gprs").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="border: medium groove #800000">
                    <asp:Label ID="Label9" runat="server" Text="WIFI:        "></asp:Label>
                    </td>
                    <td class="style10" style="border: medium groove #800000" width="200">
                        <asp:Label ID="Lblwifi" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"wifi").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="border: medium groove #800000">
                    <asp:Label ID="Label10" runat="server" Text="Battery Capacity:        "></asp:Label>
                    </td>
                    <td class="style10" style="border: medium groove #800000" width="200">
                        <asp:Label ID="lblbatterycapa" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"battery_capacity").ToString() %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8" colspan="2">
                        <asp:Label ID="lblmodel5" runat="server" Enabled="False" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"model_Number").ToString() %>'></asp:Label>
                    </td>
                </tr>
                
                <tr>
                 <td>
                        &nbsp;</td>
                </tr>
                
                <tr>
                 <td class="style6">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style6" colspan="2">
                        &nbsp;</td>
                    <td align="right" width="115">
                        <br />
                        <asp:ImageButton ID="btnAddCart" runat="server" ImageUrl="~/Image/add.png" 
                            onclick="btnAddCart_Click" Width="111px" />
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

