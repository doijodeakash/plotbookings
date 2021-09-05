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
using System.Net;
using System.Net.Mail;

namespace Register_Form
{

    public partial class Login_page : System.Web.UI.Page
    {
        static string decryptpaswd;
        string encrypwd;
        //String  mycon = "AKASH-PC\SQLEXPRESS;Initial Catalog=Real_Estate_management;Integrated Security=true";
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            String myquery = "select * from Register_tb where user_name='" + txtname.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass, type;
            if (ds.Tables[0].Rows.Count > 0)
            {
                uname = ds.Tables[0].Rows[0]["user_name"].ToString();
                pass = ds.Tables[0].Rows[0]["password"].ToString();
                type = ds.Tables[0].Rows[0]["type"].ToString();
                con.Close();
                decryptpwd(pass);
                if (uname == txtname.Text && decryptpaswd == txtpass.Text && type == "user")
                {
                    Session["username"] = uname;
                    Session["type"] = type;
                    //Response.Redirect("HtmlPage1.html");
                    Response.Redirect("~/Register_Page.aspx");
                    txtuser_name.Text = "";
                    txt_pass.Text = "";
                }
                else if (uname == txtname.Text && decryptpaswd == txtpass.Text && type == "admin")
                {
                    Session["adminsession"] = uname;
                    Response.Redirect("Add_plots_buttons.aspx");

                    //Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Login Details. Try to enter Username/password Carefully')</script>");
                }
                //else
                //{
                //    Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Login Details. Try to enter Username/password Carefully')</script>");
                //}

            }
            else
            {

                Response.Write("<script LANGUAGE='JavaScript' >alert('password not match')</script>");
            }
            con.Close();



        }

        protected void btn_Signup_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Register_tb where user_name='" + txtuser_name.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Label1.Text = "Username already exists";
                Response.Write("<script LANGUAGE='JavaScript' >alert('Username Already exists')</script>");
                txt_confirmpass.Text = "";
                txtpass.Text = "";

            }

            else if (txt_pass.Text == txt_confirmpass.Text)
            {
                encryption1();
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
                String Query = "insert into Register_tb(user_name,password,type) values ('" + txtuser_name.Text + "','" + encrypwd + "','user')";
                con.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = Query;
                cmd1.Connection = con;

                cmd1.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Register  Successfully')</script>");
                Response.Redirect("~/Login_page.aspx");
                txtuser_name.Text = "";
                txt_pass.Text = "";
                txt_confirmpass.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('password not match')</script>");
            }


        }
        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[txt_pass.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txt_pass.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }

        private string decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptpaswd = decryptpwd;
            return decryptpaswd;
        }

        protected void btn_forgot_pass_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            string st = "select user_name, password FROM Register_tb WHERE user_name='" + txtEmail.Text + "'";
            cmd = new SqlCommand(st, con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            string pass;

            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage email = new MailMessage();
                email.From = new MailAddress(txtEmail.Text); //Enter sender email address.
                email.To.Add(txtEmail.Text); //Destination Recipient e-mail address.
                                             //  pass = ds.Tables[0].Rows[0]["password"].ToString();
                pass = decryptpwd(ds.Tables[0].Rows[0]["password"].ToString());
                email.Subject = "Your Forget Password:"; //Subject for your request.
                email.Body = "Hi,Your Password is: " + pass;

                email.IsBodyHtml = true;
                //SMTP SERVER DETAILS
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                smtpc.EnableSsl = true;
                smtpc.Port = 587;
                smtpc.UseDefaultCredentials = false;


                smtpc.Credentials = new NetworkCredential("junedhirapure2399@gmail.com ", "Juned123@");
                smtpc.Send(email);
                string script = @"<script language=""javascript""> alert('Password Has Been Sent.......!!!!!.');
                 </script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
            }
            else
            {
                //pwdlbl.Text = "This email address is not exist in our Database try again";
                Response.Write("<script LANGUAGE='JavaScript' >alert('Not Exists')</script>");
            }
        }
    }
}