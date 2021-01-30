using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_AdminHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "viewsubcat")
        {

            int catid = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = catid;
            string qry = "select * from SubcategoryTable where pr_catid = '" + catid + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataList2.DataSource = ds;
            DataList2.DataBind();
            con.Close();

            string qry2 = "select count(pr_subid) from SubcategoryTable where pr_catid = '" + catid + "'";
            con.Open();
            SqlCommand cmd2 = new SqlCommand(qry2,con);
            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();

            int count = Convert.ToInt32(dr[0]);

            if (count > 0)
            {
                Panel1.Visible = false;
            }
             else
             {
                Panel1.Visible = true;
             }
            con.Close();
            }
        if(e.CommandName == "delcat")
        {
            int catid = Convert.ToInt32(e.CommandArgument);
            string qry1 = "delete from CategoryTable where pr_catid ='" + catid + "'";
            string qry2 = "delete from SubcategoryTable where pr_catid = '"+ catid +"'";
            SqlCommand cmd1 = new SqlCommand(qry1,con);
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/AdminHome.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text != "")
        {
            con.Open();
            string qry = "insert into CategoryTable(catname) values ('"+ TextBox1.Text +"')";
            SqlCommand cmd = new SqlCommand(qry,con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/AdminHome.aspx");
        }
    }

    public void Button4_Click(object sender, EventArgs e)
    {
            if (TextBox2.Text != "")
            {
                con.Open();
                int ctd = Convert.ToInt32(Session["catid"]);
                string qry = "insert into SubcategoryTable(pr_catid,subname) values ('"+ ctd + "','" + TextBox2.Text + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Session["catid"] = null;
                Response.Redirect("../ADMIN/AdminHome.aspx");
            }
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "delsub")
        {
            int subid = Convert.ToInt32(e.CommandArgument);
            string qry2 = "delete from SubcategoryTable where pr_subid = '" + subid + "'";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/AdminHome.aspx");
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if(TextBox3.Text != "" && TextBox4.Text != "")
        {
            string qry = "insert into adtypetable(ad_typename,ad_rate) values ('"+ TextBox3.Text +"','"+ TextBox4.Text +"')";
            SqlCommand cmd = new SqlCommand(qry,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/AdminHome.aspx");
        }
    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "deloffer")
        {
            int addid = Convert.ToInt32(e.CommandArgument);
            con.Open();
            string qry = "delete from adtypetable where ad_typeid = '" + addid + "'";
            SqlCommand cmd = new SqlCommand(qry,con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/AdminHome.aspx");
        }
        if(e.CommandName == "updatepanel")
        {
            Panel2.Visible = true;
            int adid = Convert.ToInt32(e.CommandArgument);
            con.Open();
            string qry = "select ad_typename,ad_rate from adtypetable where ad_typeid = '" + adid + "'";
            SqlCommand cmd = new SqlCommand(qry,con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            Label9.Text = dr[0].ToString();
            Label11.Text = dr[1].ToString();

            TextBox5.Text = dr[0].ToString();
            TextBox6.Text = dr[1].ToString();
            con.Close();
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        string qry = "update adtypetable set ad_typename ='" + TextBox5.Text + "' ,ad_rate = '" + TextBox6.Text + "' where ad_typename = '" + Label9.Text + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../ADMIN/AdminHome.aspx");
    }
}