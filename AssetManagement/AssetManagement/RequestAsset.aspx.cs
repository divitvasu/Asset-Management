using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssetManagement
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"]!= null)
            {

                if (Session["UserName"].ToString() == "admin")
                {
                    Response.Redirect("Homepage.aspx");
                }
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                //SqlCommand cmd = new SqlCommand("select * from user_master where Asset_Status='Active'", con);
                string cmd = "select * from asset_master where Asset_Status='Active'";
                SqlDataAdapter da = new SqlDataAdapter(cmd, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();

                AssetList.DataSource = dt;
                AssetList.DataBind();
                AssetList.DataTextField = "Asset_Name";
                AssetList.DataValueField = "Asset_Id";
                AssetList.DataBind();
            }
            else
            {
                string str = "<script>alert('Please Login Again'); window.location.href='Login.aspx' ;</script>";
                Response.Write(str);
            }

        }
        protected void request(object sender, EventArgs e)
        { 
        }
    }
}