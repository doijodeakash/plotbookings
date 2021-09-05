using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Register_Form
{
    public partial class Register : System.Web.UI.Page
    {
        string encrypwd; 
        String mycon = "Data Source=DESKTOP-I4M5PNL;Initial Catalog=Real_Estate_management;Integrated Security=True";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Register_tb where user_name='" + txtusernm.Text + "'", con);
            SqlDataReader  dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = "Username already exists";
                //Response.Write("<script LANGUAGE='JavaScript' >alert('Username Already exists')</script>");
                txtcnfpass.Text = "";
                txtpass.Text = "";
            }

            else if (txtpass.Text == txtcnfpass.Text)
            {
                encryption1();
                con = new SqlConnection(mycon);
                String Query = "insert into Register_tb(user_name,password) values ('" + txtusernm.Text + "','" + encrypwd + "')";
                con.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = Query;
                cmd1.Connection = con;

                cmd1.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Register  Successfully')</script>");

                txtusernm.Text = "";
                txtpass.Text = "";
                txtcnfpass.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('password not match')</script>");
            }

            
        }
        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[txtpass.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txtpass.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }
    }
}