<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FPOReinspections_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Number of FPO Reinspections Per Officer Embeddded CorVu Report</h1>

        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/FPO_Reinspections_Per_Officer.qrp&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/Number_of_FPO_Audits_and_Inspections_GRAPH_SQY.sqy&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
        </div>

    </div>
</asp:Content>

