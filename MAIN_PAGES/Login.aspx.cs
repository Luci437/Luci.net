using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MAIN_PAGES_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getconnection();
    }

    public static SqlConnection getconnection()
    {
        String constr = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        SqlConnection con = new SqlConnection(constr);
        return con;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = getconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "select * from loginTable where username='"+ TextBox1.Text +"' and password='"+ TextBox2.Text +"'";

        cmd.Connection.Open();

        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();

        if(sdr.HasRows)
        {
            errormsg.Text = "Login succesful!";
            Response.Redirect("Home.aspx");
        }else
        {
            errormsg.Text = "Username/Password not Matching";
        }
        cmd.Connection.Close();
    }
    
}