using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;


public class AppointmentsDAL
{
    public static String AddAppointment(string username, string title, string text,
        string appdate, string notifybeforehours)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_addappointment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@text", text);
            cmd.Parameters.AddWithValue("@appdate", appdate);
            cmd.Parameters.AddWithValue("@notifybeforehours", notifybeforehours);
            cmd.ExecuteNonQuery();
            return null; // no error
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            con.Close();
        }
    }  // end of AddAppointment

    public static String DeleteAppointment(string appid)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_deleteappointment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appid", appid);
            cmd.ExecuteNonQuery();
            return null; // no error
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            con.Close();
        }
    }  // end of DeleteAppointment


    public static String UpdateAppointment(string appid, string title, string text, string notifybeforehours)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_UpdateAppointment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appid", appid);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@text", text);
            cmd.Parameters.AddWithValue("@notifybeforehours", notifybeforehours);
            cmd.ExecuteNonQuery();
            return null; // no error
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            con.Close();
        }
    }  // end of DeleteAppointment


    public static DataTable GetUpcomingAppointments(String username)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            SqlDataAdapter da= new SqlDataAdapter("sp_UpcomingAppointments", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@username", username);
            DataSet ds = new DataSet();
            da.Fill(ds, "appointments");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
             // write exception message to trace
            return null;
        }

    }


    public static DataTable GetAllAppointments(String username)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("sp_GetAllAppointments", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@username", username);
            DataSet ds = new DataSet();
            da.Fill(ds, "appointments");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            // write exception message to trace
            return null;
        }

    }
    public static DataTable GetAppointment(String appid)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from appointments where appid=@appid", con);
            da.SelectCommand.Parameters.AddWithValue("@appid", appid);
            DataSet ds = new DataSet();
            da.Fill(ds, "appointments");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            // write exception message to trace
            return null;
        }

    }

    public static DataTable SearchAppointments(String username,String  title, String text)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("sp_SearchAppointments", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@username", username);
            da.SelectCommand.Parameters.AddWithValue("@title", "%" +  title + "%");
            da.SelectCommand.Parameters.AddWithValue("@text", "%"  +  text + "%");
            DataSet ds = new DataSet();
            da.Fill(ds, "appointments");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            HttpContext.Current.Trace.Write("Error in SearchAppointments  --> " + ex.Message);  
            return null;
        }

    }

    public static DataTable GetAppointmentsByDate(String username, String selecteddate)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("sp_GetAppointmentsByDate", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@username", username);
            da.SelectCommand.Parameters.AddWithValue("@selecteddate",  selecteddate);
            DataSet ds = new DataSet();
            da.Fill(ds, "appointments");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            HttpContext.Current.Trace.Write("Error in SearchAppointments  --> " + ex.Message);
            return null;
        }

    }
}
