using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        checkadisvalid();
        if (Session["userid"] != null)
        {
            if (DataList2.Items.Count > 0)
            {
                Panel1.Visible = false;
            }
            else
            {
                noproductmssglabel.Text = "No Products";
                noproductmssglabel2.Text = "You need to Add products to see here";
                Button1.Visible = true;
                Button4.Visible = false;
                Panel1.Visible = true;
            }
        }
        else
        {
            noproductmssglabel.Text = "Login Required";
            noproductmssglabel2.Text = "You need to Login to see your products";
            Button4.Visible = true;
            Button1.Visible = false;
            Panel1.Visible = true;
        }
    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "Productview")
        {
            Session["prdid"] = e.CommandArgument.ToString();
            Response.Redirect("../MAIN_PAGES/Productview.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "prdids")
        {
            Session["prdid"] = e.CommandArgument.ToString();
            Response.Redirect("../MAIN_PAGES/Productview.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }

    public void checkadisvalid()
    {
        string crdate = DateTime.Today.ToString("dd/MM/yyyy");
        string qry = "update useradtypetable set ad_status = 2 where ad_enddate < '" + crdate + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "Productview")
        {
            Response.Redirect("../CUSTOMER/Editprds.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }
}