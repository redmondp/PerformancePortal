using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TempHolder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        char[] sc = { '&', '*', '<', '>', '\'' };
        string strName = txtName.Text.ToString();
        string strContact = txtContact.Text.ToString();
        string strQuery = txtQuery.Text.ToString();
        bool scCont_Name = txtName.Text.IndexOfAny(sc) >= 0;
        bool sccont_Contact = txtContact.Text.IndexOfAny(sc) >= 0;
        bool scCont_Query = txtQuery.Text.IndexOfAny(sc) >= 0;


        if (strName == "" || strContact == "" || strQuery == "")
        {
            lblMessage.Visible = true;

            lblMessage.Text = "All fields are required before the message can be sent.";
        }

        else if (scCont_Name == true || sccont_Contact == true || scCont_Query == true)
        {
            lblMessage.Visible = true;

            lblMessage.Text = "Your message contains disallowed characters. Check for ', &, *, <, or > before sending.";
        }
        else
        {


            SqlConnection conn = new SqlConnection("Server=hq-ict-12580s;Database=dmtreporting_dev;User Id=dmt;Password=Dmteam;");

            string qry = "INSERT INTO PerfPortal_FeedbackForm (Contact_Name, Contact_Details, Contact_Query, Contact_Added) VALUES ('" + strName + "','" + strContact + "','" + strQuery + "',CONVERT(DATETIME,'" + DateTime.Now.ToString() + "',103))";
            SqlCommand comm = new SqlCommand(qry, conn);

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                txtName.Text = "";
                txtContact.Text = "";
                txtQuery.Text = "";
                lblMessage.Visible = true;
                lblMessage.Text = "Thanks! Your feedback or query has been sent.";
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Oh no! An error occured: " + ex.Message.ToString();
            }
            finally
            {
                conn.Close();
                comm.Dispose();
            }
        }
    }
}