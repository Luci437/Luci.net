using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_Admimhome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        notificationcounter();  //total user to approve
        notificationcounter2(); //total prds to approve
        notificationcounter3(); //total ad to approve
        notificationcounter4(); //total number of items
        notificationcounter5(); //total number of users
        notificationcounter6(); //total number of ads
    }

    public void notificationcounter6()
    {
        string qry = "select count(ad_id) from useradtypetable";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label7.Text = dr[0].ToString();
        con.Close();
    }

    public void notificationcounter5()
    {
        string qry = "select count(reg_id) from tbl_reg";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label6.Text = dr[0].ToString();
        con.Close();
    }

    public void notificationcounter4()
    {
        string qry = "select count(pr_id) from ProductTable";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label5.Text = dr[0].ToString();
        con.Close();
    }
    public void notificationcounter()
    {
        string qry = "select count(status) from tbl_reg where status = 'notapproved'";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label2.Text = dr[0].ToString();
        con.Close();
        
    }

    public void notificationcounter2()
    {
        string qry = "select count(pr_status) from ProductTable where pr_status = 0";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label3.Text = dr[0].ToString();
        con.Close();

    }

    public void notificationcounter3()
    {
        string qry = "select count(ad_id) from useradtypetable where ad_status = 0";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label4.Text = dr[0].ToString();
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
    }
}