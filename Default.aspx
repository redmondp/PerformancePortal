<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="toolslider">
        <p>FEATURED TOOLS</p>
        <ul class="bxslider">
            <li>
                <a href="http://hq-ict-09440v:8080/CorVu/g?IncidentAnalysisTool_Live" target="_self">
                    <img src="Images/iat.png" border="0"/></a></li>
            <li>
                <a href="http://hq-ict-09440v:8080/CorVu/g?KPIFramework" target="_self">
                    <img src="Images/kpiframework.png" border="0"/></a></li>
            <li>
                <a href="http://hq-ict-09440v:8080/CorVu/g?KPITool" target="_self">
                    <img src="Images/kpitool.png" border="0" /></a></li>
            <li>
                <a href="http://hq-ict-09440v:8080/CorVu/g?KPI_New_Dev" target="_self">
                    <img src="Images/corpsc.png" border="0" /></a></li>
            
        </ul>
    </div>
    <div class="content-home">
        
        <asp:Label ID="lbl_Name" runat="server" Text="Label"></asp:Label>
        <asp:Repeater ID="MyRepeater" runat="server">

            <HeaderTemplate>
                <table style="border: none; width: 100%;">
                    <tr style="background-color: #FFFFFF; color: #ad2323; font-size: 24px; font-family: Calibri; font-weight: bold; text-shadow: 2px 2px #e1e1e1;">
                        <td colspan="2">
                            <b>Latest Updates</b>
                        </td>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td>
                        <table style="background-color: #ffffff; border-top: 1px dotted #ad2323; width: 100%;">
                            <tr>
                                <td style="font-family: Calibri; font-weight: bold; color: #333333; font-size: 20px;">
                                    <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("LU_Title") %>' Font-Bold="true" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Calibri; color: #ad2323;">
                        <asp:Label ID="lblComment" runat="server" Text='<%#Eval("LU_Description") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="background-color: #EBEFF0; border-top: 1px dotted #ad2323; border-bottom: 1px solid #ad2323; width: 100%">
                            <tr>
                                <td style="font-family: Calibri; font-weight: bold; color: #333333; font-size: 12px;">Post By:
                                    <asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("LU_CreatedBy") %>' /></td>
                                <td class="createdate">Posted:
                                    <asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("LU_Created") %>' /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </Table>
            </FooterTemplate>
        </asp:Repeater>



        <asp:LinkButton ID="btnShow" runat="server">Add Item (Admin Only)</asp:LinkButton>

        <asp:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>

        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup">
            <img src="Images/add_item.png" class="Header" />
            <asp:Label ID="lblStatus" runat="server" Text="Please enter the Admin credentials to add an item..." CssClass="Text"></asp:Label>
            <asp:Label ID="lblAdminLogin" runat="server" Text="Admin Login" CssClass="Text"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="Text"></asp:TextBox>
            <asp:Label ID="lblAdminPassword" runat="server" Text="Admin Password" CssClass="Text"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="Text"></asp:TextBox>

            <asp:DropDownList ID="ddlUser" runat="server" CssClass="Text">
                <asp:ListItem Text="Select a User" Value="0" />
                <asp:ListItem Text="Deakin, Mark" Value="1" />
                <asp:ListItem Text="Hughes, Michael" Value="2" />
                <asp:ListItem Text="Leech, Christopher" Value="3" />
                <asp:ListItem Text="Lewcock, Denise" Value="4" />
                <asp:ListItem Text="Nuttall, Tracey" Value="5" />
                <asp:ListItem Text="Ryan, Joanne" Value="6" />
                <asp:ListItem Text="Redmond, Paul" Value="7" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlType" runat="server" CssClass="Text">
                <asp:ListItem Text="Select a Type" Value="0" />
                <asp:ListItem Text="General Update" Value="1" />
                <asp:ListItem Text="Calendar Item" Value="2" />
                <asp:ListItem Text="System" Value="3" />
            </asp:DropDownList>
            <asp:Label ID="lblTitle" runat="server" Text="Title of Post" CssClass="Text"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" Visible="false" CssClass="Text"></asp:TextBox>
            <asp:Label ID="lblBody" runat="server" Text="Details" CssClass="Text"></asp:Label>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Width="100%" Rows="7" CssClass="Text"></asp:TextBox>

            <asp:Button ID="btnOK" runat="server" Text="OK" CssClass="Btn" OnClick="btnOK_Click" />
            <asp:Button ID="btnAddItem" runat="server" Text="Add Item" CssClass="Btn" OnClick="btnAddItem_Click" />
            <asp:Button ID="btnClose" runat="server" Text="Cancel" CssClass="Btn" OnClick="btnClose_Click" />
        </asp:Panel>

    </div>
</asp:Content>

