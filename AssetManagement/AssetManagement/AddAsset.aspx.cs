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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorMessageLabel.Visible = false;
            //(Page.Master.FindControl("Form1")).DefaultButton = "AddAssetButton";
            

    //        Label1.Text = Convert.ToString(Page.Request.UrlReferrer);
        //    Console.Write( Convert.ToString(Page.PreviousPage));
          //  Console.ReadKey();
        /*    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AssetManagement_DB.mdf;Integrated Security=True");
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
            */
        }
        protected void addasset(object sender, EventArgs e)
        {
            string asset_name = AssetName.Text;
            string dept = Dept.Text;
            string qty = Qty.Text;
            if (asset_name != "" && dept != "" && qty !="" && Convert.ToInt32(qty)!=0)
            {               
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into asset_master(Asset_Name,Asset_type,Asset_Qty) values('" + asset_name + "','" + dept + "','" + Convert.ToInt32(qty) + "') ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                if(asset_name=="")
                    ErrorMessageLabel.Text = "Please enter Asset Name!";
                else if(dept=="")
                    ErrorMessageLabel.Text = "Please enter Department name!";
                else if(qty=="")
                    ErrorMessageLabel.Text = "Quantity can't be null!";
                else if(Convert.ToInt32(qty)==0)
                    ErrorMessageLabel.Text = "Quantity can't be zero";
                ErrorMessageLabel.Visible = true;
            }
        }
    }
}