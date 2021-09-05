using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;

namespace Register_Form
{
    public partial class Register_Page : System.Web.UI.Page
    {
        ///String mycon = "Data Source=DESKTOP-I4M5PNL;Initial Catalog=Real_Estate_management;Integrated Security=True";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
             {                                    
                    display_records();                
             }
            //display_records();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {
                String Query = "update  Add_plots set bookingdate=@dob, user_name='" + txtcname.Text + "', mobile='" + txtcontact.Text + "',status ='B' where status='A' and plot_no='" + txtplotno.Text + "'";
                //String Query = "insert into Add_plots(user_name,mobile) values ('" + txt_name.Text + "','" + txt_mb.Text + "')";

                //  String mycon = "Data Source=DESKTOP-I4M5PNL;Initial Catalog=Real_Estate_management;Integrated Security=True";
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@dob",DateTime.Now.ToString());
                cmd.CommandText = Query;
                cmd.Connection = con;
                int count = cmd.ExecuteNonQuery();
                if (count==1)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Inserted Successfully')</script>");
                }
                else
                {
                    Response.Write(@"<script LANGUAGE='JavaScript' >alert('Plot Is Already Booked Or Does Not  Exists')</script>");
                }
                //  Label1.Text = "Inserted Successfully";
                //Response.Write("<script LANGUAGE='JavaScript' >alert('Inserted Successfully')</script>");
                txtplotno.Text = "";
                txtsqft.Text = "";
                txtstatus.Text = "";
                txtcontact.Text = "";
                txtcname.Text = "";
                con.Close();
                display_records();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<script LANGUAGE='JavaScript' >alert('This Plot Is Already Booked, PleaseEnter Another ID')</script>");
            }
        }

        protected  void display_records()
        {
            String query = "Select plot_no, square_fit,status, bookingdate from add_plots where status ='A' order by plot_no asc ";
            //String query = "Select  Plot_no, square_fit,status  from Add_plots";
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
           con.Open();
           SqlCommand cmd = new SqlCommand(query, con);
           SqlDataAdapter sda = new SqlDataAdapter(cmd);
           DataTable dt = new DataTable();
           sda.Fill(dt);
           g1.DataSource = dt;
           g1.DataBind();
           con.Close();
            DataSet ds = new DataSet();
        }

        protected void g1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtplotno.Text = g1.SelectedRow.Cells[0].Text;
            txtsqft.Text = g1.SelectedRow.Cells[1].Text;
            txtstatus.Text = g1.SelectedRow.Cells[2].Text;
            txtcname.Text = Session["username"].ToString();
        }
    }
}