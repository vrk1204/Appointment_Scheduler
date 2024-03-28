<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>APPOINTMENTS</h1>
    <table width="100%" height="500px">
    <tr>
    <td valign="top">
    <h3>About Appointments Application</h3>
    Appointments application allows you to schedule your appointments and store
    your appointments in web so that you can access it from anywhere.
    
    <p />
    It provides the following functionality :
    <ul>
     <li>Adding appointments</li>
     <li>Searching your appointments</li>
     <li>Edit and delete your appointments</li>
     <li>Get appointments by date</li>
     <li>Provides notification facility to remind you about your appointments</li>
    </ul>
    
    In order to use this application, you must register as a user. 
    <p />
    Click <a href="all/register.aspx">here to register</a>.
    
    </td>
    <td valign="top" width="30%" style="background-color:white">
    <h3>Login<asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                        Font-Size="0.8em" ForeColor="#333333" 
                        PasswordRecoveryText="Forgot Password?" 
                        PasswordRecoveryUrl="~/all/forgotpassword.aspx" 
            onloggedin="Login1_LoggedIn">
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
                    </h3>
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
