using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssetManagement
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void deleteasset(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            //SqlCommand cmd = new SqlCommand("update asset_master SET Asset_Status='Inactive' where Asset_Name='" + DeleteAssetId.Text + "' and Asset_type='" + Department.Text + "' and Asset_Status='Active'", con);
           // cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Homepage.aspx");
        }
    }
}