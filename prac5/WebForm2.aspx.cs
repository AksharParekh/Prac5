using System;

namespace prac5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["EmpName"] != null)
                {
                    txtEmployeeName.Text = Request.Cookies["EmpName"].Value;
                }

                if (Session["LeaveDate"] != null)
                {
                    DateTime lvdt = (DateTime)Session["LeaveDate"];
                    lblLeaveDt.Text = lvdt.ToString("dd-MM-yyyy");
                }
                else
                {
                    lblLeaveDt.Text = "No date selected";
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            string ename = txtEmployeeName.Text;
            string leavetype = ddlLeaveType.SelectedValue;
            string reason = txtReason.Text;

            Session["EmpName"] = ename;
            Session["LeaveType"] = leavetype;
            Session["Reason"] = reason;

            if (CheckBox1.Checked)
            {
                Response.Cookies["EmpName"].Value = ename;
                Response.Cookies["EmpName"].Expires = DateTime.Now.AddDays(7);
            }

            string leaveDate = "No date selected";

            if (Session["LeaveDate"] != null)
            {
                DateTime lvdt = (DateTime)Session["LeaveDate"];
                leaveDate = lvdt.ToString("dd-MM-yyyy");
            }

            lblMessage.Text =
                "<h3>Leave Application Details</h3>" +
                "<b>Employee Name:</b> " + ename + "<br/>" +
                "<b>Leave Type:</b> " + leavetype + "<br/>" +
                "<b>Leave Date:</b> " + leaveDate + "<br/>" +
                "<b>Reason:</b> " + reason + "<br/>" +
                "<b>Remember Employee Name:</b> " +
                (CheckBox1.Checked ? "Yes" : "No");
        }
    }
}