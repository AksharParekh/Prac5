
using System;

namespace prac5
{
    public partial class Webform1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;

            lblselectedDt.Text =
                "Selected Date: " +
                selectedDate.ToString("dd-MM-yyyy");

            Session["LeaveDate"] = selectedDate;
        }

        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            if (Session["LeaveDate"] != null)
            {
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                lblselectedDt.Text = "Please select a date first.";
            }
        }
    }
}