using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_Allads : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "adstat")
        {
            int adid = Convert.ToInt32(e.CommandArgument);
            string qry = "delete from useradtypetable where ad_id = '" + adid + "'";
            SqlCommand cmd = new SqlCommand(qry,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../CUSTOMER/Allads.aspx");
        }
    }
}