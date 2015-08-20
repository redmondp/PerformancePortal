<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncidentReports.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Corporate Reports</h1>

        <p>Incident Data</p>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/AllIncs2016.xlsx&user=hypervu&password=hypervu"><img src="Images/IRS_All_1516.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/All_Incidents_2014_15_All_IRS_FORMULAS.xlsx&user=hypervu&password=hypervu"><img src="Images/IRS_All_1415_arc.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/All_Incidents_2013_14_WITH_FORMULAS%20-%20V2.xlsx&user=hypervu&password=hypervu"><img src="Images/IRS_All_1314.png" border="0" /></a>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/All_Incidents_2014_15_WITH_FORMULAS_VICS.xlsx&user=hypervu&password=hypervu"><img src="Images/AllIncsVics_1415_arc.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/All_Incidents_2013_14_WITH_FORMULAS%20-%20V2.xlsx&user=hypervu&password=hypervu"><img src="Images/AllIncsVics_1314.png" border="0" /></a>
        <p>Fatality and Casualty Data</p>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/NI49_Detailed_Excel_Report_Since_2009_10.EXCEL.FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/casualtyfat_09_onwards.png" border="0" /></a><a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/NI33_Detailed_Report_Since_2009_10.FILTERED.xlsx"><img src="Images/DelibFires_09_onwards.png" border="0" /></a>

    </div>
</asp:Content>

