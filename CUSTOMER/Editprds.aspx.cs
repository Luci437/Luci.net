using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_Editprds : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    string prdid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(Request.QueryString["prdid"]))
        {
            prdid = Request.QueryString["prdid"];
        }
        loadvalues();
    }

    public void loadvalues()
    {
        string qry = "select pr_name,img_path from ProductimageTable,ProductTable where ProductimageTable.pr_imgid = ProductTable.pr_id and ProductTable.pr_id = '" + prdid + "'";
        SqlCommand cmd = new SqlCommand(qry,con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        Label2.Text = dr[0].ToString();
        Image1.ImageUrl = dr[1].ToString();

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string filename = FileUpload1.FileName;
        string filepath = "../Images/prdimgs/" + filename;

        string qry = "update ProductimageTable set img_path = '" + filepath + "' where pr_imgid = '" + prdid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string qry = "update ProductTable set pr_name = '" + TextBox2.Text + "' where pr_id = '" + prdid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string qry = "update ReturnTable1 set pr_rename = '" + TextBox1.Text + "',pr_about = '" + TextBox5.Text + "' where pr_id = '" + prdid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string qry = "update ReturnTable2 set pr_rename = '" + TextBox3.Text + "',pr_about = '" + TextBox5.Text + "' where pr_id = '" + prdid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string qry = "update ReturnTable3 set pr_rename = '" + TextBox4.Text + "',pr_about = '" + TextBox7.Text + "' where pr_id = '" + prdid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        string qry = "update AddressTable set name = '" + TextBox8.Text + "',mob = '" + TextBox9.Text + "' where pr_id = '"+ prdid +"'";

        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }
}