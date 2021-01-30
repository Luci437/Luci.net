using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_addetailsaspx : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "approvebtn")
        {
            con.Open();
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            string qry = "update useradtypetable set ad_status = 0 where ad_id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../ADMIN/addetails.aspx");
        }
    }

    protected void DataList2_ItemCreated(object sender, DataListItemEventArgs e)
    {
        Panel2.Visible = false;
    }
}