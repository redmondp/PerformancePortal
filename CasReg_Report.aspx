<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CasReg_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Casualties in Regulated and Non Regulated Parts of Regulated Premises - Embedded CorVu Report</h1>

        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/Reporting/CFRMIS/Fires_Fatalities_Casualties_in_Reg_NonReg.Properties.qrp&width=700&height=400&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
        </div>

    </div>
</asp:Content>

