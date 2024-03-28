using System;


public partial class AddAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string nhb = txtNHB.Text;

        if ( nhb == "")
               nhb = "0";

        String res = AppointmentsDAL.AddAppointment
            (Session["username"].ToString(),
            txtTitle.Text,
            txtText.Text,
            txtDate.Text + " " + txtTime.Text,
            nhb);
        if (res == null)
            lblMsg.Text = "Successfully Added Appointment!";
        else
            lblMsg.Text = "Error -> " + res;

    }
}
