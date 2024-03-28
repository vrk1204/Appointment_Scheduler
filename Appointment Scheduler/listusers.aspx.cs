using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;



public partial class listusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = Membership.GetAllUsers();
        GridView1.DataBind();
    }
}
