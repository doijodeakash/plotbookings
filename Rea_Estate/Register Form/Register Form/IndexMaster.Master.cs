using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Register_Form
{
    public partial class IndexMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["adminsession"] != null || !string.IsNullOrEmpty(Session["adminsession"] as string))
                {
                    
                }
                else
                {
                    //Response.Redirect("~/Add_plots_buttons.aspx");
                    Response.Redirect("~/Login_page.aspx");
                }
            }
        }

        protected void lblogout_Click(object sender, EventArgs e)
        {
            Session["adminsession"] = null;
            Session.Clear();
            Response.Redirect("~/Login_page.aspx");
        }
    }
}