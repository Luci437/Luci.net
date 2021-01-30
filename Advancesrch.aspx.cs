using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Advancesrch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Productview")
        {
            Session["prdid"] = e.CommandArgument.ToString();
            Response.Redirect("~/MAIN_PAGES/Productview.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        listfill1();
        listfill2();
        listfill3();
        con.Close();

        if(DataList1.Items.Count > 0)
        {
            noresultpanel.Visible = false;
        }else
        {
            noresultpanel.Visible = true;
        }
    }

    public void listfill1()
    {
        
        string qry = "select * from ProductTable ,ProductimageTable ,ReturnTable1,ReturnTable2,ReturnTable3 where ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_status = 1 and ProductTable.pr_name like '" + TextBox1.Text + "%' and ReturnTable1.pr_rename like '" + TextBox2.Text + "%'";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dr.Close();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        dr.Close();
    }

    public void listfill2()
    {
        string qry = "select * from ProductTable ,ProductimageTable ,ReturnTable1,ReturnTable2,ReturnTable3 where ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_status = 1 and ProductTable.pr_name like '" + TextBox1.Text + "%' and ReturnTable2.pr_rename like '" + TextBox2.Text + "%'";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dr.Close();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        dr.Close();
    }
    public void listfill3()
    {
        string qry = "select * from ProductTable ,ProductimageTable ,ReturnTable1,ReturnTable2,ReturnTable3 where ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_status = 1 and ProductTable.pr_name like '" + TextBox1.Text + "%' and ReturnTable3.pr_rename like '" + TextBox2.Text + "%'";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dr.Close();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        dr.Close();
    }
}