using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_Productapproval : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DataList1.Items.Count > 0)
        {
            Panel1.Visible = true;
            Panel3.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel3.Visible = true;
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "approvebtn")
        {
            con.Open();
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            string qry = "update ProductTable set pr_status = '1' where pr_id = '"+ id +"'";
            SqlCommand cmd = new SqlCommand(qry,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../ADMIN/Productapproval.aspx");
        }
    }
}