using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

public partial class MasterPage : System.Web.UI.MasterPage
{

    WindowsAuthentication WinAuth = new WindowsAuthentication();

    protected void Page_Load(object sender, EventArgs e)
    {
        WinAuth.ActivDirName = Page.User.Identity.Name;
        WinAuth.FullName = WinAuth.GetFullName();
        WinAuth.UserName = WinAuth.GetUsername();
        
    }

    protected void IAT_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea(WindowsAuthentication.PerformancePortal.Iat);
   
   
        WinAuth.TrackerSql();

        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?IncidentAnalysisTool_Live");

       
    }

    protected void IKPI_OnClick(object sender, EventArgs e)
    {
       WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Kpi));
     

        WinAuth.TrackerSql();

        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?KPITool");

    }

    protected void Framework_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Framework));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?KPIFramework");
    }

    protected void Benchmarking_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Ibt));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?InternalBenchMarkingToolv7");
    }

    protected void QuarterlyTool_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Qrt));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?qtr");
    }

    protected void QueryTool_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Iqt));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-12592v/misdv/");
    }

    protected void KPIScore_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Ckpi));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?KPI_New_Dev");
    }

    protected void StationScore_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Ss));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?Station_Scorecards_V5");
    }

    protected void Mos_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Mos));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu3/g?MOSv20");
    }

    protected void Emergency_OnClick(object sender, EventArgs e)
    {
        WinAuth.AddArea((WindowsAuthentication.PerformancePortal.Er));
        WinAuth.TrackerSql();
        Response.Redirect("http://hq-ict-09440v:8080/CorVu/g?EmergencyResponse_dev");
        
    }
}
