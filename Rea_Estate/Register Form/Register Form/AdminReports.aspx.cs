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
    public partial class AdminReports : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                Loadreports();
        }

        public void Loadreports()
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["default"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from add_plots", con);

            DataTable dt = new DataTable("add_plots");
            sda.Fill(dt);

            ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("potsreports.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Loadreports();
        }
    }
}