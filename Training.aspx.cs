using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LabelClick(object sender, EventArgs e)
    {
        string fileName = "\\pptraining.pdf";

        Response.Clear();
        Response.ContentType = "Application/Octet-Stream";
        Response.AddHeader("Content-Disposition", string.Format("Attachment; FileName={0}", fileName));
        Response.WriteFile(fileName);
        Response.End();
    }

}

