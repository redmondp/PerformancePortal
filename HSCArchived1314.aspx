<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HSCArchived1314.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Number of Completed HSC's Embeddded CorVu Report - 2013/14 Archived</h1>
        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/GRIP/GRIP_PACK_HFRA_2013_14.cbr&user=admin&password=-corvu-" width="1000" height="500"></iframe>
        </div>
    </div>
</asp:Content>

