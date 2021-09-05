using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Register_Form
{
    public partial class UserMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!string.IsNullOrEmpty(Session["username"] as string) && !string.IsNullOrEmpty(Session["type"] as string))
                {
                    txtuname.Text = Session["username"].ToString();
                }
                else
                {
                    Response.Redirect("~/Login_page.aspx");
                }
        }

        protected void lblogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session.Clear();
            Response.Redirect("~/Login_page.aspx");
        }
    }
}