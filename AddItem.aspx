<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-home">
    <asp:DropDownList ID="ddlUser" runat="server">
        <asp:ListItem Text="--Select User--" Value="0"></asp:ListItem>
        <asp:ListItem Text="Hughes, Mike" Value="1"></asp:ListItem>
        <asp:ListItem Text="Leech, Christopher" Value="2"></asp:ListItem>
        <asp:ListItem Text="Lewcock, Denise" Value="3"></asp:ListItem>
        <asp:ListItem Text="Nuttall, Tracey" Value="4"></asp:ListItem>
        <asp:ListItem Text="Ryan, Joanne" Value="5"></asp:ListItem>
    </asp:DropDownList>

    </div>
</asp:Content>
    

