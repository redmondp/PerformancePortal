<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Defic_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Number and % of FPO Audits that Result in Notice of Deficiencies or Enforcement - Embedded CorVu Report</h1>

        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/No.of%20Audits%20ResultinginNODorEN.qrp&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/Number_FPO_Audits_Resulting_in_NOD.EN.SQY&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
        </div>

    </div>
</asp:Content>

