using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmiTable
{
    public partial class index : System.Web.UI.Page
    {
        public readonly string connection = "Data Source=DESKTOP-QA9JDRP\\ALOKSQLSERVER;Initial Catalog=db_loan;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string planName = ddPlanName.SelectedItem.Text;
            string tenure = ddTenure.SelectedValue;
            string roi = ddRoi.SelectedValue;
            Session["PlanName"] = planName;
            Session["Tenure"] = ddTenure.SelectedItem.Text;
            Session["Roi"] = ddRoi.SelectedItem.Text;


            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                using(SqlCommand cmd = new SqlCommand("InsertScheme", conn)) 
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@PlanName", planName);
                    cmd.Parameters.AddWithValue("@Tenure", tenure);
                    cmd.Parameters.AddWithValue("@Roi", roi);

                    cmd.ExecuteNonQuery();
                }
            }
            Response.Write("<script>alert('Saved Successfully!!!')</script>");
            Response.Redirect("EmiGenerator.aspx");
        }
    }
}