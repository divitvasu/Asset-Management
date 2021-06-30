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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorMessageLabel.Visible = false;
        }

        protected void adduser(object sender, EventArgs e)
        {
            string userid=UserId.Text;
            string name=Name.Text;
            string mobile=Mobile.Text;
            string password=Password.Text;
            if (userid != "" && name != "" && mobile != "" && password != "")
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into user_master(UserId,Name,Mobile,Password) values('" + UserId.Text + "','" + Name.Text + "','" + Mobile.Text + "','" + Password.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                if (userid == "")
                    ErrorMessageLabel.Text = "Please enter UserId!";
                else if (name == "")
                    ErrorMessageLabel.Text = "Please enter Name!";
                else if (mobile == "")
                    ErrorMessageLabel.Text = "Please enter Mobile number!";
                else if (password=="")
                    ErrorMessageLabel.Text = "Password can't be empty!";
                ErrorMessageLabel.Visible = true;


            }
        }

    }
}