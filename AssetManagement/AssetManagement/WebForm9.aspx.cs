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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AssetManagement_DB.mdf;Integrated Security=True");
            con.Open();
            //SqlCommand cmd = new SqlCommand("select * from user_master where Asset_Status='Active'", con);
            string cmd="select * from asset_master where Asset_Status='Active'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            AssetList.DataSource = dt;
            AssetList.DataBind();
            AssetList.DataTextField="Asset_Name";
            AssetList.DataValueField = "Asset_Id";
            AssetList.DataBind();

        }
    }
}