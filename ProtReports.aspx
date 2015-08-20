<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProtReports.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>CFRMIS Reports</h1>
        <br />

        <!-- <p>Group 1 Reports</p>
        <a href="ProPres_Report.aspx"><img src="Images/ProPros_rpt.png" border="0" /></a><a href="Heritage_Report.aspx"><img src="Images/Heritage_rpt.png" border="0" /></a><a href="PAI_Report.aspx"><img src="Images/PAI_rpt.png" border="0" /></a>
        <a href="PPV_Report.aspx"><img src="Images/PPV_rpt.png" border="0" /></a><a href="Themed_Report.aspx"><img src="Images/Themed_rpt.png" border="0" /></a>

        <p>Group 2 Reports</p>
        <a href="BCA_Report.aspx"><img src="Images/BCA_rpt.png" border="0" /></a><a href="PFI_Report.aspx"><img src="Images/PFI_rpt.png" border="0" /></a><a href="Comp_Report.aspx"><img src="Images/Complaints_rpt.png" border="0" /></a>

        <p>Other Reports</p>
        
        <a href="FPOReinspections_Report.aspx"><img src="Images/FPOReinspections_rpt.png" border="0" /></a><a href="FPOAudits_Report.aspx"><img src="Images/FPOAudits_rpt.png" border="0" /></a>
        <a href="Defic_Report.aspx"><img src="Images/Defic_rpt.png" border="0" /></a>
        <a href="FiresReg_Report.aspx"><img src="Images/FiresReg_rpt.png" border="0" /></a><a href="CasReg_Report.aspx"><img src="Images/CasReg_rpt.png" border="0" /></a>-->
        <p>Main Reports</p>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Fires_In_Regulated_Properties_2014_15_FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/FiresReg.png" border="0" /></a>
        
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/Fires_In_Regulated_Properties_2015_16_FILTERED.xlsx&user=hypervu&password=hypervu"><img src="Images/FiresReg1516.png" border="0" /></a>
        <p>Other Reports</p>
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/CFRMIS/Engagements.xlsx">Engagements</a><br />
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/CFRMIS/Consultations.xlsx">Consultations</a><br />
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/CFRMIS/Enforcements_Prohibitions_APs.xlsx">Enforcements and Prohibitions</a><br />
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/CFRMIS/Explosive.xlsx">Explosive</a><br />
        <a href="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Excel/CFRMIS/Petroleum.xlsx">Petroleum</a><br />

    </div>
</asp:Content>

