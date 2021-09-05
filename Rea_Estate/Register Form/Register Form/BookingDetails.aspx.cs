using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;

namespace Register_Form
{
    public partial class BookingDetails : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void fillgrid()
        {
            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                cmd = new SqlCommand("select plot_no,square_fit,status,user_name,mobile,bookingdate from add_plots where user_name=@username", con);
                cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                _ = da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count <= 0)
                    Response.Write("<script>alert('No records to show')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<script>" + ex.Message + "</script>");
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            fillgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fillgrid();
        }

        [Obsolete]
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            string sql = "UPDATE add_plots SET bookingdate=NULL,status=@status,user_name='',mobile='' WHERE plot_no=@pid";
            cmd = new SqlCommand(sql, con);
            Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
            int id = Convert.ToInt32(lbldeleteID.Text);
            cmd.Parameters.AddWithValue("@pid", lbldeleteID.Text);
            cmd.Parameters.AddWithValue("@status", "A");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            fillgrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.EditIndex = e.NewEditIndex; fillgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                string sql = "UPDATE add_plots SET bookingdate=@dob,square_fit=@square_fit,status=@status,user_name=@user_name,mobile=@mobile WHERE plot_no=@plot_no";
                TextBox txtid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtid");
                TextBox txtsquarefeet = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsquarefeet");
                TextBox txtstatus = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtstatus");
                TextBox txtuser = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtuser");
                TextBox txtmobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtmobile");
                GridView1.EditIndex = -1;
                cmd = null;
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@plot_no", Convert.ToInt32(txtid.Text));
                cmd.Parameters.AddWithValue("@square_fit", txtsquarefeet.Text);
                cmd.Parameters.AddWithValue("@status", txtstatus.Text);
                cmd.Parameters.AddWithValue("@user_name", txtuser.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@dob", DateTime.Now.ToString());
                con.Open();
                //int row = cmd.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                //Response.Write(row);
                con.Close();
                fillgrid();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}