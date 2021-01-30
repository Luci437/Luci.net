using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        myacntbtntext();
        loginbtntext();
        signuptext();
    }

    public void signuptext()
    {
        if(Session["userid"]!=null)
        {
            Signupbtnlk.Visible = false;
        }else
        {
            Signupbtnlk.Visible = true;
        }
    }

    public void loginbtntext()
    {
        if(Session["userid"]!=null)
        {
            Loginbtn.Text = "Logout";
        }else
        {
            Loginbtn.Text = "Login";
        }
    }
    public void myacntbtntext()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
       

        if (Session["userid"] != null)
        {
            int id = Convert.ToInt32(Session["userid"]);
            cmd.CommandText = "select * from tbl_reg where reg_id=" + id + "";
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            Button1.Text = (Convert.ToString(sdr["fname"])).ToUpper();
        }
        else
        {
            Button1.Text = "MY ACCOUNT";
        }
        con.Close();
    }


    protected void Srch2_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["userid"]!=null) {
            Response.Redirect("/CUSTOMER/Account.aspx");
        }else
        {
            Panel1.Visible = true;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if(Loginbtn.Text =="Logout")
        {
            Session["userid"] = null;
            Response.Redirect("/MAIN_PAGES/LoginPage.aspx");
        }else
        {
            Response.Redirect("/MAIN_PAGES/LoginPage.aspx");
        }
    }


    protected void okbtn_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void signupbtnlk_Click(object sender, EventArgs e)
    {
        Response.Redirect("/MAIN_PAGES/SignupPage.aspx");
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if(Session["userid"]!=null)
        {
            Response.Redirect("/CUSTOMER/Ads.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
    }

    protected void srchbtn_Click(object sender, EventArgs e)
    {
        var searchText = Server.UrlEncode(searchbar.Text); 
        Response.Redirect("~/Search.aspx?srch=" + searchText);
    }

    protected void srch1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Advancesrch.aspx");
    }
}
