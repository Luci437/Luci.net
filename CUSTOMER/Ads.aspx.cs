using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

public partial class CUSTOMER_Ads : System.Web.UI.Page
{
    int totaldates;
    string filepath, aboutads,sdate,edate;
    int prdid, offerid;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"]==null)
        {
            loginerror.Visible = true;
            Panel3.Visible = false;
        }
        else
        {
            Panel3.Visible = true;
            loginerror.Visible = false;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
        //DateTime ds = Calendar1
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Text = Calendar2.SelectedDate.ToShortDateString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        aboutads = TextBox1.Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        prdid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        offerid = Convert.ToInt32(DropDownList2.SelectedItem.Value);
        Label3.Text = DropDownList2.SelectedItem.Text;
        //findprice();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
            if (FileUpload1.HasFile)
            {

            string fname = FileUpload1.FileName.ToString();
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Images/prdimgs/") + filename);

                Panel2.Visible = true;
                filepath = "../Images/prdimgs/" + fname;
                Label14.Text = filepath;
                Label12.Visible = false;
            }
            else
            {
                Label12.Visible = true;
            }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Label1.Text != "-/-/-" || Label2.Text != "-/-/-") {
            sdate = Label1.Text.ToString();
            edate = Label2.Text.ToString();
            Label13.Visible = false;
            Label3.Text = DropDownList2.SelectedItem.Text;
            Label4.Text = Label1.Text.ToString();
            Label5.Text = Label2.Text.ToString();

            DateTime ssdate = Convert.ToDateTime(Label1.Text);
            DateTime eedate = Convert.ToDateTime(Label2.Text);

            TimeSpan ts = eedate.Date - ssdate.Date;

            double daysss = ts.TotalDays;

            Label9.Text = daysss.ToString();
            string offerid = DropDownList2.SelectedItem.Value;
            string qry = "select ad_rate from adtypetable where ad_typeid = '" + offerid + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            int rates = Convert.ToInt32(dr[0].ToString());
            con.Close();

            double totalrate = rates * Convert.ToInt32(Label9.Text);
            Label7.Text = totalrate.ToString();
        }
        else
        {
            Label13.Visible = true;
        }

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string offerid = DropDownList2.SelectedItem.Value;
        string qry = "select ad_rate from adtypetable where ad_typeid = '" + offerid + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        int rates = Convert.ToInt32(dr[0].ToString());
        con.Close();

        Label11.Text = rates.ToString();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string offerid = DropDownList2.SelectedItem.Value;
        string prdid = DropDownList1.SelectedItem.Value;
        int id = Convert.ToInt32(Session["userid"]);
        //string fname = FileUpload1.FileName.ToString();
        //filepath = "../Images/userads/" + fname;
        string qry = "insert into useradtypetable (ad_typeid,ad_regid,ad_prid,ad_startdate,ad_enddate,ad_pay,ad_status,ad_img,ad_admin_status) values ('"+ offerid +"','"+ id +"','"+ prdid +"','"+ Label4.Text +"','"+ Label5.Text +"','"+ Label7.Text +"','0','"+ Label14.Text +"','Waiting for Admin Accept')";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../MAIN_PAGES/Home.aspx");
    }
}