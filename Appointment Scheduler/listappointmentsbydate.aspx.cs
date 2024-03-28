using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class listappointmentsbydate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String selecteddate = Calendar1.SelectedDate.ToShortDateString();

        GridView1.DataSource = AppointmentsDAL.
             GetAppointmentsByDate( Session["username"].ToString(),
              selecteddate);

        GridView1.DataBind();
    }
}
