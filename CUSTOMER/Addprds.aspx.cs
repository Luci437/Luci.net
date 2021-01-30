using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;


public partial class CUSTOMER_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    int newprdid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void addtoproducttable()
    {
        int id = Convert.ToInt32(Session["userid"]);
        string todaydate = DateTime.Today.ToString("dd/MM/yyyy");
        con.Open();
        string subids = DropDownList2.SelectedItem.Value;
        string qry1 = "insert into ProductTable(reg_id,pr_name,pr_about,pr_web,pr_date,pr_catid,pr_subid,pr_status) values ("+ id +",'"+ TextBox1.Text +"','"+ TextBox3.Text +"','"+ TextBox2.Text +"','"+ todaydate + "','"+ Label17.Text +"','"+ subids +"','0')";
        SqlCommand cmd1 = new SqlCommand(qry1, con);
        cmd1.ExecuteNonQuery();
        con.Close();
    }

    public void findnewprdid()
    {
        con.Open();
        string qry = "select IDENT_CURRENT('ProductTable')";
        SqlCommand cmd = new SqlCommand(qry,con);
        SqlDataReader dr = cmd.ExecuteReader();

        while(dr.Read())
        {
            newprdid = int.Parse(dr[0].ToString());
        }
        con.Close();
        
    }

    public void addreturnitem1()
    {
        con.Open();
        string qry2 = "insert into ReturnTable1(pr_id,pr_rename,pr_about) values('"+ newprdid +"','" + TextBox4.Text + "','" + TextBox10.Text + "')";
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        cmd2.ExecuteNonQuery();
        con.Close();
    }

    public void addreturnitem2()
    {
        con.Open();
        string qry3 = "insert into ReturnTable2(pr_id,pr_rename,pr_about) values('"+ newprdid +"','" + TextBox5.Text + "','" + TextBox11.Text + "')";
        SqlCommand cmd3 = new SqlCommand(qry3, con);
        cmd3.ExecuteNonQuery();
        con.Close();
    }

    public void addreturnitem3()
    {
        con.Open();
        string qry4 = "insert into ReturnTable3(pr_id,pr_rename,pr_about) values('"+ newprdid +"','" + TextBox6.Text + "','" + TextBox12.Text + "')";
        SqlCommand cmd4 = new SqlCommand(qry4, con);
        cmd4.ExecuteNonQuery();
        con.Close();
    }

    public void addaddress()
    {
        con.Open();
        string qry5 = "insert into AddressTable(pr_id,cntry,state,pincode,mob,name) values('"+ newprdid +"','India','" + DropDownList3.SelectedItem.Text + "','" + TextBox14.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "')";
        SqlCommand cmd5 = new SqlCommand(qry5, con);
        cmd5.ExecuteNonQuery();
        con.Close();
    }

    public void addprdimg()
    {
        if (FileUpload1.HasFile) {
            string fname = FileUpload1.FileName.ToString();
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Images/prdimgs/") + filename);
            string path = "../Images/prdimgs/" + fname;

            con.Open();
            string qry6 = "insert into ProductimageTable(pr_imgid,img_path) values('" + newprdid + "','" + path + "')";
            SqlCommand cmd6 = new SqlCommand(qry6, con);
            cmd6.ExecuteNonQuery();
            con.Close();
        }else
        {
            Response.Write("<script type='text/javascript'>alert('Please Choose a Image');</script>");
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        addtoproducttable();
        findnewprdid();
        addreturnitem1();
        addreturnitem2();
        addreturnitem3();
        addaddress();
        addprdimg();
        Response.Redirect("../CUSTOMER/Account.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox10.Visible == true)
        {
            TextBox10.Visible = false;
            Button2.Text = "+";
        }
        else
        {
            TextBox10.Visible = true;
            Button2.Text = "-";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox11.Visible == true)
        {
            TextBox11.Visible = false;
            Button3.Text = "+";
        }
        else
        {
            TextBox11.Visible = true;
            Button3.Text = "-";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextBox12.Visible == true)
        {
            TextBox12.Visible = false;
            Button4.Text = "+";
        }
        else
        {
            TextBox12.Visible = true;
            Button4.Text = "-";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string catid = DropDownList1.SelectedItem.Value;
        Label17.Text = catid;
    }
}