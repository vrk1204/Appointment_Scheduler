using System;
using System.Web.Configuration;

public class Database
{

    public static String ConnectionString
    {
        get {
            return WebConfigurationManager.
                ConnectionStrings["appointmentsConnectionString"].
                ConnectionString;


        }
    }
}
