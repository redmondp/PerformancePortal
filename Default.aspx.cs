using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CodeEngine.Framework.QueryBuilder;
using CodeEngine.Framework.QueryBuilder.Enums;


public partial class _Default : System.Web.UI.Page
{
     WindowsAuthentication WinAuth = new WindowsAuthentication();
   


    protected void Page_Load(object sender, EventArgs e)
    {

        WinAuth.ActivDirName = User.Identity.Name;
        
        Onloadsql();
        WinAuthentication();
        lbl_Name.Text = "Welcome to the Performance Portal " + WinAuth.FullName +"!";

        onloadLogic();
    }


    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "Admin" && txtPassword.Text == "perfp0rtal")
        {
            //Response.Redirect("AddItem.aspx");
            mp1.Show();
            lblStatus.Text = "Right, you're in. Please add an item...";
            btnOK.Visible = false;
            txtUsername.Visible = false;
            txtPassword.Visible = false;
            lblAdminLogin.Visible = false;
            lblAdminPassword.Visible = false;
            btnAddItem.Visible = true;
            ddlUser.Visible = true;
            ddlType.Visible = true;
            txtTitle.Visible = true;
            txtBody.Visible = true;
            lblTitle.Visible = true;
            lblBody.Visible = true;
        }
        else
        {
            mp1.Show();
            lblStatus.Text = "Oh no! Sorry, that's not correct. Try again please.";
            lblStatus.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnClose_Click(object sender, EventArgs e)
    {
        mp1.Hide();
        lblStatus.Text = "First, please enter the Admin credentials to add an item...";
        lblStatus.ForeColor = System.Drawing.Color.DarkSlateGray;
    }

    protected void btnAddItem_Click(object sender, EventArgs e)
    {

        string strUser = ddlUser.SelectedItem.ToString();
        string strTypeItem = ddlType.SelectedItem.ToString();
        string strType = ddlType.SelectedValue;
        string strTitle = txtTitle.Text;
        string strBody = txtBody.Text;



        if (strUser == "Select a User" || strTypeItem == "Select a Type" || strTitle == "" || strBody == "")
        {
            mp1.Show();
            lblStatus.Text = "All fields are mandatory, please check...";
            lblStatus.ForeColor = System.Drawing.Color.Red;

        }
        else
        {


            SqlConnection conn = new SqlConnection("Server=hq-ict-12580s;Database=dmtreporting_dev;User Id=perfportal;Password=rouser;");

            string qry = "INSERT INTO PerfPortal_LatestUpdates (LU_CreatedBy, LU_Description, LU_Type, LU_Title) VALUES ('" + strUser + "','" + strBody + "'," + strType + ",'" + strTitle + "')";
            SqlCommand comm = new SqlCommand(qry, conn);

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Item added successfully. Admin has been logged out.');window.location='Default.aspx';", true);
            }
            catch (Exception ex)
            {
                mp1.Show();
                lblStatus.Text = "Oh no! An error occured: " + ex.Message.ToString();
            }
            finally
            {
                conn.Close();
                comm.Dispose();
            }
        }
    }

    protected void Onloadsql()
    {
        SQLConnection RetrieveUpdates = new SQLConnection();
        SelectQueryBuilder Query = new SelectQueryBuilder();
        DataSet ds = new DataSet();

        RetrieveUpdates.connection_string =
            "Server=hq-ict-12580s;Database=dmtreporting_dev;User Id=perfportal;Password=rouser;";

        Query.TopRecords = 3;
        Query.SelectColumns("*"); //Select Statement
        Query.SelectFromTable("PerfPortal_LatestUpdates");
        Query.AddOrderBy("LU_Created",Sorting.Descending);
        var _statement = Query.BuildQuery();

        RetrieveUpdates.Sql = _statement;

        ds = RetrieveUpdates.GetConnection;

        MyRepeater.DataSource = ds;
        MyRepeater.DataBind();

       
    }

    protected void WinAuthentication()
    {
        WinAuth.FullName = WinAuth.GetFullName();
        WinAuth.UserName = WinAuth.GetUsername();

        WinAuth.AddArea(WindowsAuthentication.PerformancePortal.Portal);

        //WinAuth.TrackerSql();
    }

    protected void onloadLogic()
    {
        //Login form needs to set to visible=true/false on postback or first time load...
        txtUsername.Visible = true;
        txtPassword.Visible = true;
        lblAdminLogin.Visible = true;
        lblAdminPassword.Visible = true;
        btnAddItem.Visible = false;
        btnOK.Visible = true;
        //And messages/colour needs to be reset too...
        lblStatus.Text = "First, please enter the Admin credentials to add an item...";
        lblStatus.ForeColor = System.Drawing.Color.DarkSlateGray;

        //Add item form needs to set to visible=false on postback or first time load...
        ddlUser.Visible = false;
        ddlType.Visible = false;
        txtTitle.Visible = false;
        txtBody.Visible = false;
        lblTitle.Visible = false;
        lblBody.Visible = false;
    }


}