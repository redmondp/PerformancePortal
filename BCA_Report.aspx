<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BCA_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Business Continuity Advice Embeddded CorVu Report</h1>

        <div class="EmbeddedContent"><iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/CFRMIS/2015/6_BC_Advice_cross_final%20v2.qrp&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe></div>

    </div>
</asp:Content>

