using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MAIN_PAGES_SignupPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Boolean usernamestatus;
        usernamestatus = Checkusername(emailtxtbx.Text);
        if (usernamestatus) {
            if (firstpass.Text == secpass.Text) {
                string qry = "Insert into tbl_reg(fname,lname,email,password,mobile,role,status) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + emailtxtbx.Text + "','" + firstpass.Text + "','" + mobnum.Text + "','USER','notapproved')";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = qry;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Redirect("LoginPage.aspx");
                con.Close();
            }
            else
            {
                errormsg.Text = "Passwords doesn't match..";
            }
        }
        else
        {
            errormsg.Text = "Sorry!! Email Already registered...";
        }
    }
    public Boolean Checkusername(String username)
    {
        Boolean userstatus;
        string qry = "select * from tbl_reg where email = '"+emailtxtbx.Text+"'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = qry;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }else
        {
            userstatus = true;
        }
        con.Close();
        return userstatus;
    }
}