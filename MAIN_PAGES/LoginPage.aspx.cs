using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MAIN_PAGES_LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
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
        cmd.Connection.Open();
        cmd.CommandText = "select * from tbl_reg where email='"+ emailtxtbx.Text+"' and password='"+ passtxtbx.Text+"'";
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        if (sdr.HasRows)
        {              
                Session["userid"] = sdr["reg_id"];


                int id = Convert.ToInt32(Session["userid"]);
                cmd.CommandText = "select fname from tbl_reg where reg_id=" + id + "";


                string role1 = Convert.ToString(sdr["role"]);
                if (role1 == "ADMIN")
                {
                    Response.Redirect("/ADMIN/Admimhome.aspx");
                }
                if (role1 == "USER")
                {
                    Response.Redirect("Home.aspx");
                }

        }else
        {
            errormsglbl.Text = "Sorry Username/Password not matching..";
        }
    }
}