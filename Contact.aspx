<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="TempHolder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="UC">
        <img src="Images/feedback.png" />
        <p>Send Feedback or Submit a Query</p>
        <asp:Label ID="Label4" runat="server" Text="The Performance Portal should enable you to perform your role more effectively, making data and information held in our corporate systems more transparent and easier to analyse. So we can continuously improve the system over time, we welcome your feedback and comments, positive or negative, on any aspect of the Portal."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Your name:" Font-Bold="true"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" Width="100%" CssClass="Text"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Your email or telephone number:" Font-Bold="true"></asp:Label>
        <br />
        <asp:TextBox ID="txtContact" runat="server" Width="100%" CssClass="Text"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Your query or feedback:" Font-Bold="true"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuery" runat="server" TextMode="MultiLine" Width="100%" Rows="20" CssClass="Text"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" Text="Send" Width="75px" Height="40px" OnClick="btnSend_Click"/>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>

