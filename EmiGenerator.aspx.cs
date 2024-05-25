using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmiTable
{
    public partial class EmiGenerator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtTenure.Text = Session["Tenure"].ToString();
                txtRoi.Text = Session["Roi"].ToString();
            }

        }

        protected void btnCalculateEmi_Click(object sender, EventArgs e)
        {
            decimal loan_amount = Convert.ToDecimal(txtLoanAmount.Text);
            decimal tenure = 0;
            decimal roi = 0;

            if (txtTenure.Text.Equals("12 months"))
            {
                tenure = 12;
            }
            else if(txtTenure.Text.Equals("24 months"))
            {
                tenure = 24;
            }
            else if(txtTenure.Text.Equals("36 months"))
            {
                tenure = 36;
            }
            else
            {
                tenure = 0;
            }
            if (txtRoi.Text.Equals("7%"))
            {
                roi = 7;
            }
            else if(txtRoi.Text.Equals("12%"))
            {
                roi = 12;
            }
            else if (txtRoi.Text.Equals("18%"))
            {
                roi = 18;
            }
            else
            {
                roi = 0;
            }

            
            decimal emi_amount = (loan_amount + (loan_amount * (roi / 100))) / tenure;
            txtEmiAmount.Text = emi_amount.ToString("F2");
        }

        protected void btnGenerateSchedule_Click(object sender, EventArgs e)
        {
            emiSchedule.InnerHtml = string.Empty;
            decimal tenure = 0;
            string amount = txtEmiAmount.Text;
            //string date = calender.ToString();


            if (txtTenure.Text.Equals("12 months"))
            {
                tenure = 12;
            }
            else if (txtTenure.Text.Equals("24 months"))
            {
                tenure = 24;
            }
            else if (txtTenure.Text.Equals("36 months"))
            {
                tenure = 36;
            }
            else
            {
                tenure = 0;
            }

            if (DateTime.TryParse(date.Text, out DateTime loanDate))
            {
                for (int i = 1; i <= tenure; i++)
                {
                    var dueDate = loanDate.AddMonths(i);
                    emiSchedule.InnerHtml += $"<tr><td>{i}</td><td>{dueDate:dd/MM/yyyy}</td><td>{amount}</td></tr>";
                }
            }

        }

        protected void calender_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = calender.SelectedDate.ToShortDateString();
        }
    }
}