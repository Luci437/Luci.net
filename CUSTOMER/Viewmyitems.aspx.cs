using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_Viewmyitems : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Session["userid"]==null)
        {
            Response.Redirect("../MAIN_PAGES/Home.aspx");
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "removeitem")
        {
            int prdid = Convert.ToInt32(e.CommandArgument.ToString());
            string qry1 = "update useradtypetable set ad_status = -1 where ad_prid ='" + prdid + "'";
            string qry2 = "update ProductTable set pr_status = -1 where pr_id = '"+ prdid +"'";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(qry1,con);
            SqlCommand cmd2 = new SqlCommand(qry2, con);

            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../MAIN_PAGES/Home.aspx");
        }
        else if(e.CommandName == "edititem")
        {
            Response.Redirect("../CUSTOMER/Editprds.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }
}