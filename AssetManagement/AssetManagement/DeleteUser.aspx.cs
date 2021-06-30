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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deleteuser(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("update user_master SET Status='Inactive' where UserId='" + UserId.Text + "' and Password='" + Password.Text + "' and Status='Active'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Homepage.aspx");
        }
    }
}