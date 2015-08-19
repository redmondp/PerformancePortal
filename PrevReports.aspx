<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PrevReports.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Prevention Reports</h1>

        <p>HSC Data</p>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Completed_HFRAs_Inc.Ward_2015_16_FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/HSC201516.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Completed_HFRAs_Inc.Ward_2014_15_FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/HSC201415_arc.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Completed_HFRAs_Inc.Ward_2013_14_FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/HSC201314.png" border="0" /></a>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Completed_HFRAs_Inc.Ward_2012_13.FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/HSC201213.png" border="0" /></a>
        <!--<a href="HSCCurrentYear.aspx"><img src="Images/HSC201415_rpt.png" border="0" /></a>-->

    </div>
</asp:Content>

