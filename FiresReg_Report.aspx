<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FiresReg_Report.aspx.cs" Inherits="CorpReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ReportLinksArea">
        <h1>Fires in Regulated and Non Regulated Parts of Regulated Premises - Embedded CorVu Report</h1>

        <div class="EmbeddedContent">
            <iframe src="http://hq-ict-08610v/corvucgi/cvhtmsrv.exe?file=/IRSReporting/Prevention%20Reports/No.%20of%20Fires%20in%20Reg_Non%20Reg%20Properties.qrp&user=hypervu&password=hypervu" width="1000" height="500" frameBorder="0"></iframe>
        </div>

    </div>
</asp:Content>

