using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MAIN_PAGES_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"]==null)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = Button1.Text.ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Button3.Text.ToString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Button4.Text.ToString();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Session["userid"]);
        if (Session["userid"] != null)
        {
            string qry = "insert into ContactUsTable(reg_id,cont_sub,cont_desc) values(" + id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlCommand cmd = new SqlCommand(qry,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../MAIN_PAGES/Home.aspx");
        }else
        {
            Response.Redirect("../MAIN_PAGES/ContactUs.aspx");
        }
    }
}