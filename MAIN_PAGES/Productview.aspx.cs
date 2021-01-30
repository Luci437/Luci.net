using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MAIN_PAGES_Productview : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    int usersame = 1,userid, prdid;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Convert.ToInt32(Session["userid"]);
        if(Session["prdid"] ==null)
        {
            Response.Redirect("../MAIN_PAGES/Home.aspx");
        }
        Filldatalist();
        totalrating();
    }

    protected void Checkuser()
    {

        con.Open();

        int prdgid = Convert.ToInt32(Session["prdid"]);

        string qry2 = "select reg_id from ProductTable where pr_id = " + prdgid + "";
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        SqlDataReader sdr = cmd2.ExecuteReader();
        sdr.Read();

        string id = Convert.ToString(sdr["reg_id"]);
        sdr.Close();
        con.Close();

        string val1 = Session["userid"].ToString();
        string val2 = id;
        if(val1 == val2)
        {
            Panel1.Visible = true;
            usersame = 0;
        }else
        {
            usersame = 1;
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
        }
        else
        {
            if (e.CommandName == "chatnow")
            {
                Session["receiver_id"] = e.CommandArgument.ToString();
                //Checkuser();
                if (usersame == 1)
                {
                    Filldatalist();
                    Response.Redirect("../CUSTOMER/ChatRoom.aspx");
                }
            }
        }
    }
    public void Filldatalist()
    {
        con.Open();

        
        int prdgid = Convert.ToInt32(Session["prdid"]);

        string qry2 = "select reg_id from ProductTable where pr_id = " + prdgid + "";
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        SqlDataReader sdr = cmd2.ExecuteReader();
        sdr.Read();

        string id = Convert.ToString(sdr["reg_id"]);
        prdid = Convert.ToInt32(sdr["reg_id"]);
        sdr.Close();

            string qry = "select * from tbl_reg,ProductTable,AddressTable where tbl_reg.reg_id = '" + id + "' and ProductTable.pr_id = '" + prdgid + "' and AddressTable.pr_id = '"+ prdgid +"'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataList2.DataSource = ds;
            DataList2.DataBind();
            con.Close();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            String qry1 = "select count(rate_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            dr.Read();

            int usercount = Convert.ToInt32(dr[0]);
            con.Close();

            if (usercount > 0)
            {
                string qry2 = "select count(reg_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "' and rating = 1";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(qry2, con);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                dr2.Read();

                int likecount = Convert.ToInt32(dr2[0]);
                con.Close();
                if (likecount == 0)
                {
                    string qry3 = "select count(reg_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "' and rating = -1";
                    con.Open();
                    SqlCommand cmd3 = new SqlCommand(qry3, con);
                    SqlDataReader dr3 = cmd3.ExecuteReader();
                    dr3.Read();

                    int dislikecount = Convert.ToInt32(dr3[0]);
                    con.Close();

                    if (dislikecount == 0)
                    {
                        string qry4 = "insert into RatingTable (pr_id,reg_id,rating) values('" + prdid + "','" + userid + "',-1)";
                        con.Open();
                        SqlCommand cmd4 = new SqlCommand(qry4, con);
                        cmd4.ExecuteNonQuery();
                        con.Close();
                    }
                    else
                    {
                        string qry5 = "update RatingTable set rating = 1 where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
                        con.Open();
                        SqlCommand cmd5 = new SqlCommand(qry5, con);
                        cmd5.ExecuteNonQuery();
                        con.Close();
                    }

                }
                else
                {
                    string qry5 = "update RatingTable set rating = -1 where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
                    con.Open();
                    SqlCommand cmd5 = new SqlCommand(qry5, con);
                    cmd5.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                string qry4 = "insert into RatingTable (pr_id,reg_id,rating) values('" + prdid + "','" + userid + "',-1)";
                con.Open();
                SqlCommand cmd4 = new SqlCommand(qry4, con);
                cmd4.ExecuteNonQuery();
                con.Close();
            }
            totalrating();
        }
        else
        {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            String qry1 = "select count(rate_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            dr.Read();

            int usercount = Convert.ToInt32(dr[0]);
            con.Close();

            if (usercount > 0)
            {
                string qry2 = "select count(reg_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "' and rating = 1";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(qry2, con);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                dr2.Read();

                int likecount = Convert.ToInt32(dr2[0]);
                con.Close();
                if (likecount == 0)
                {
                    string qry3 = "select count(reg_id) from RatingTable where reg_id = '" + userid + "' and pr_id ='" + prdid + "' and rating = -1";
                    con.Open();
                    SqlCommand cmd3 = new SqlCommand(qry3, con);
                    SqlDataReader dr3 = cmd3.ExecuteReader();
                    dr3.Read();

                    int dislikecount = Convert.ToInt32(dr3[0]);
                    con.Close();

                    if (dislikecount == 0)
                    {
                        string qry4 = "insert into RatingTable (pr_id,reg_id,rating) values('" + prdid + "','" + userid + "',1)";
                        con.Open();
                        SqlCommand cmd4 = new SqlCommand(qry4, con);
                        cmd4.ExecuteNonQuery();
                        con.Close();
                    }
                    else
                    {
                        string qry5 = "update RatingTable set rating = 1 where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
                        con.Open();
                        SqlCommand cmd5 = new SqlCommand(qry5, con);
                        cmd5.ExecuteNonQuery();
                        con.Close();
                    }
                }
                else
                {
                    string qry5 = "update RatingTable set rating = 1 where reg_id = '" + userid + "' and pr_id ='" + prdid + "'";
                    con.Open();
                    SqlCommand cmd5 = new SqlCommand(qry5, con);
                    cmd5.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                string qry4 = "insert into RatingTable (pr_id,reg_id,rating) values('" + prdid + "','" + userid + "',1)";
                con.Open();
                SqlCommand cmd4 = new SqlCommand(qry4, con);
                cmd4.ExecuteNonQuery();
                con.Close();
            }
            totalrating();
        }
        else
        {
            Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
        }
    }
    public void totalrating()
    {
        string qry = "select count(rate_id) from RatingTable where pr_id = '"+ prdid +"'";
        SqlCommand cmd = new SqlCommand(qry,con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        Label24.Text = dr[0].ToString();
        con.Close();

        string qry2 = "select count(rate_id) from RatingTable where pr_id = '" + prdid + "' and rating=-1";
        SqlCommand cmd2 = new SqlCommand(qry2,con);
        con.Open();
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dr2.Read();

        Label26.Text = dr2[0].ToString();
        con.Close();

        string qry3 = "select count(rate_id) from RatingTable where pr_id = '" + prdid + "' and rating=1";
        SqlCommand cmd3 = new SqlCommand(qry3, con);
        con.Open();
        SqlDataReader dr3 = cmd3.ExecuteReader();
        dr3.Read();

        Label25.Text = dr3[0].ToString();
        con.Close();
    }
}