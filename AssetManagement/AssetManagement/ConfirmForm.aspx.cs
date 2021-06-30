using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssetManagement
{
    public partial class ConfirmForm : System.Web.UI.Page
    {
        static string prevPage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (HttpContext.Current.Request.UrlReferrer.AbsoluteUri != "")
            {
                prevPage = HttpContext.Current.Request.UrlReferrer.AbsoluteUri;
            }*/
            if (Session["UserName"] != null)
            {
                Response.Redirect("homepage.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect(prevPage);
        }
    }
}