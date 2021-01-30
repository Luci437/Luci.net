using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    string srch;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            if (!String.IsNullOrEmpty(Request.QueryString["srch"]))
            {
                srch = Request.QueryString["srch"];
            }

            Filldatalist();

            if (DataList1.Items.Count > 0)
            {
                resultpanel.Visible = true;
                noresultpanel.Visible = false;
            }
            else
            {
                noresultpanel.Visible = true;
                resultpanel.Visible = false;
            }
        }
    }

    public void Filldatalist()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        con.Open();

        string qry = "select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_status = 1 and ProductTable.pr_name like ('%" + srch + "%')";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Productview")
        {
            Session["prdid"] = e.CommandArgument.ToString();
            Response.Redirect("~/MAIN_PAGES/Productview.aspx?prdid=" + e.CommandArgument.ToString());
        }
    }
}