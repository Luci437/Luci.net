using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "replyarv")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            string qry = "update ContactUsTable set status = 1 where cont_id = "+ id +"";
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/Admincontactus.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        string qry = "select * from ContactUsTable where cont_sub = 'About Trader'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        string qry = "select * from ContactUsTable where cont_sub = 'Advertisement Related'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        string qry = "select * from ContactUsTable where cont_sub = 'Fake Products'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        string qry = "select * from ContactUsTable where cont_sub = 'Others'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }
}