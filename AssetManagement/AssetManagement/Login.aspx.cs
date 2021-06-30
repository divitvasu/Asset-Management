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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // ErrorMessageLabel.Enabled = false;
            ErrorMessageLabel.Visible = false;
            if (Session["UserName"] != null)
            {
                bool confirmmsg = false;
                string str1 = "<script>ans=confirm('Do you want to continue')</script>";
                Response.Write(str1);
                string str = "<script>if(ans){ <%= confirmmsg=true; %> window.location.href='Login.aspx'} else{window.location.href='Homepage.aspx' } ;</script>";
                Response.Write(str);
                if (confirmmsg)
                    Session["UserName"] = null;
                //Response.Redirect("ConfirmForm.aspx");
            }
        }

        protected void login(object sender, EventArgs e)
        {
            if (UserId.Text != "" && Password.Text != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AssetManagement_DB.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from user_master where UserId='" + UserId.Text + "' and Password='" + Password.Text + "' and Status='Active'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Session["UserName"] = UserId.Text;
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    ErrorMessageLabel.Text = "Your UserId or Password is incorrect!";
                    ErrorMessageLabel.Visible = true;
                }
                con.Close();
            }
            else if (UserId.Text == "")
            {
                ErrorMessageLabel.Text = "Please enter User Id!";
                ErrorMessageLabel.Visible = true;
            }
            else if (Password.Text == "")
            {
                ErrorMessageLabel.Text = "Please enter Password!";
                ErrorMessageLabel.Visible = true;
            }
        }
    }
}