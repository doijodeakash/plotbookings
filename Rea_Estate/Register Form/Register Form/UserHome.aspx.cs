using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Register_Form
{
    public partial class UserHome : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrid();
        }

        protected bool checkincart()
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select * from productcart where pid=@pid and emailid=@uname";
            cmd = new SqlCommand(sql, con);
            string id = ((Label)dlplots.SelectedItem.FindControl("lblid")).Text;
            cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(id));
            //cmd.Parameters.AddWithValue("@pid", "5");

            cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count <= 0)
                return true;//is not present in cart
            else
                return false;//is present in cart

        }

        protected void fillgrid()
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            string str = "select * from add_plots";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlplots.DataSource = dt;
            dlplots.DataBind();
        }
        protected void dlplots_ItemCommand(object source, DataListCommandEventArgs e)
        {
            dlplots.SelectedIndex = e.Item.ItemIndex;
            if (e.CommandName == "select")
            {
                if (checkincart() == true) //user defined method
                {
                    con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                    string sql = "insert into productcart(emailid,pid,pname,quantity,price,tprice,dateofadd,imgurl,size)values(@uname,@pid,@pname,@qty,@price_unit,@total_price,@doa,@imgurl,@size)";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@uname", Session["username"]);
                    cmd.Parameters.AddWithValue("@pid", ((Label)dlplots.SelectedItem.FindControl("lblid")).Text);
                    cmd.Parameters.AddWithValue("@pname", ((Label)dlplots.SelectedItem.FindControl("lblcomp")).Text);
                    //Get the quantity from texbox of quantity
                    int q = Convert.ToInt32(((TextBox)dlplots.SelectedItem.FindControl("txtqty")).Text);
                    cmd.Parameters.AddWithValue("@qty", q);
                    //Get the price per unit of product
                    int p = Convert.ToInt32(((Label)dlplots.SelectedItem.FindControl("lblprice")).Text);
                    cmd.Parameters.AddWithValue("@price_unit", p);
                    //Calculate total of the product
                    int t = p * q;
                    cmd.Parameters.AddWithValue("@total_price", t);
                    cmd.Parameters.AddWithValue("@doa", DateTime.Now);
                    Image img = (Image)dlplots.SelectedItem.FindControl("Image1");
                    cmd.Parameters.AddWithValue("@imgurl", img.ImageUrl);
                    cmd.Parameters.AddWithValue("@size", ((Label)dlplots.SelectedItem.FindControl("lblsize")).Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Product added into cart successfully')</script>");

                }
                else
                    Response.Write("<script>alert('Product already present in cart')</script>");
            }
        }
    }
}
