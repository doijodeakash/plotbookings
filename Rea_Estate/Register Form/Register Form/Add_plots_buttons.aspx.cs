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
    public partial class Add_plots_buttons : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
                resetTextBox();
            }
        }

        protected void resetTextBox()
        {
            txtplotno.Text = "";
            txtsqft.Text = "";
            txtstatus.Text = "";
        }
        protected void fillgrid()
        {
            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                cmd = new SqlCommand("select * from Add_plots", con);
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
                Response.Write("<script>" + ex.Message + "</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            string sql = "delete from add_plots where plot_no=@pid";
            cmd = new SqlCommand(sql, con);
            Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
            cmd.Parameters.AddWithValue("@pid", lbldeleteID.Text);
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
                string sql = "UPDATE add_plots SET square_fit=@square_fit,status=@status,user_name=@user_name,mobile=@mobile WHERE plot_no=@plot_no";
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
                con.Open();
                cmd.ExecuteNonQuery();
                
                con.Close();
                fillgrid();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }                
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fillgrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            fillgrid();
        }

        protected void btnaddplots_click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                string sql = "INSERT INTO Add_plots VALUES(@plot_no,@square_fit,@status,'','',NULL,@dopa)";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@plot_no", txtplotno.Text);
                cmd.Parameters.AddWithValue("@square_fit", txtsqft.Text);
                cmd.Parameters.AddWithValue("@status", txtstatus.Text);
                cmd.Parameters.AddWithValue("@dopa", DateTime.Now.ToString());
                GridView1.EditIndex = -1;
                //cmd.Parameters.AddWithValue("@user_name", txtusername.Text);
                con.Open();
                int count = cmd.ExecuteNonQuery();
                if (count == 1)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Plot Successfully Added')</script>");
                    
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('This Plot iD Is Already Exists , Please Enter Another ID')</script>");
                    
                }
                con.Close();
                fillgrid();
                resetTextBox();
            }
            catch (Exception ex)
            {
                Response.Write("<br/><br/><br/><br/>" + ex.Message);
            }            
        }
    }
}