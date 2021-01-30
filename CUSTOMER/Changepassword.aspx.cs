using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_Changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"] == null)
        {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cpass = TextBox1.Text;
        if (Session["userid"] == null)
        {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
        }else
        {
            int id = Convert.ToInt32(Session["userid"]);
            string qry1 = "select password from tbl_reg where reg_id = '" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry1,con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            if(dr[0].ToString() != cpass)
            {
                Label7.Text = "Sorry Your Current Password is Wrong.";
            }else
            {
                con.Close();
                string qry2 = "update tbl_reg set fname = '" + TextBox4.Text + "',lname = '" + TextBox5.Text + "',password = '" + TextBox3.Text + "' where reg_id = '" + id + "'";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(qry2,con);
                cmd2.ExecuteNonQuery();

                Response.Redirect("../CUSTOMER/Account.aspx");
            }
            con.Close();
        }
    }
}