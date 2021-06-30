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
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                

                if (Session["UserName"].ToString() == "admin")
                {
                    RequestAssetLink.Visible = false;
                }
                else
                {
                    AssetLink.Visible = false;
                    AddAssetLink.Visible = false;
                    DeleteAssetLink.Visible = false;
                    UpdateAssetLink.Visible = false;

                    UserManagementLink.Visible = false;
                    AddUserLink.Visible = false;
                    UpdateUserLink.Visible = false;
                    DeleteUserLink.Visible = false;

                }

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from user_master where UserId='" + Session["UserName"] + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                dr.Read();
                Label1.Text = "Welcome " + dr["Name"];
                con.Close();
            }
            else
            {

               // ScriptManager.RegisterStartupScript(this, GetType(), "alertbox", "alert('Login Again')", true);

                string str = "<script>alert('Please Login Again'); window.location.href='Login.aspx' ;</script>";
                Response.Write(str);
         //       ScriptManager.RegisterStartupScript(this, GetType(), "redirection", "window.location.href = 'Login.aspx';", true);
                //Response.Redirect("Login.aspx");
            }
            
        }

        protected void logout(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}