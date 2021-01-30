using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_userapproval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(DataList1.Items.Count > 0)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        else
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "approvebtn") {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            con.Open();

            int id = Convert.ToInt32(e.CommandArgument.ToString());
            string qry = "update tbl_reg set status = 'approved' where reg_id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/userapproval.aspx");
        }
    }


    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "approvebtn")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            con.Open();

            int id = Convert.ToInt32(e.CommandArgument.ToString());
            string qry = "update tbl_reg set status = 'approved' where reg_id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("../ADMIN/userapproval.aspx");
        }
    }
}