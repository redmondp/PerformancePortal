<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FPOAudits_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Number of and Time Taken for FPO Audits Embeddded CorVu Report</h1>

        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/FPO_Sat_Unsat_Audits_and_Time_Taken.qrp&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/Number%20of%20FPO%20Audits%20and%20Inspections.GRAPH.sqy&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
        </div>

    </div>
</asp:Content>

