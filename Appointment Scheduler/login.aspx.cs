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


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        Session.Add("username", Login1.UserName);
        Session.Add("userid",
            Membership.GetUser(Login1.UserName).ProviderUserKey);
    }
}
