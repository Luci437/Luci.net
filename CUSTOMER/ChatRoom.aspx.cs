using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CUSTOMER_ChatRoom : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["userid"]!=null)
        {
            int id = Convert.ToInt32(Session["userid"]);
            string qry = "select reg_id,fname from tbl_reg where reg_id = " + id + "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qry;
            cmd.Connection = con;

            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();

            string uname = Convert.ToString(sdr["fname"]);
            Button1.Text = uname;
            Label5.Text = uname;
            int uid = Convert.ToInt32(sdr["reg_id"]);
            Label3.Text = uid.ToString();

        }else
        {
            Button1.Text = "Username";
        }
        Findreceiver();
        LiveChat();

    }

    public void Findreceiver()
    {
        conn.Open();
        int rid = Convert.ToInt32(Session["receiver_id"]);
        string qry = "select reg_id,fname from tbl_reg where reg_id = " + rid + "";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = qry;
        cmd.Connection = conn;

        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();

        Label6.Text = Convert.ToString(sdr["reg_id"]);
        Label8.Text = Convert.ToString(sdr["fname"]);
        conn.Close();
    }

    public void LiveChat()
    {
        DateTime date = DateTime.Now;
        string date3 = date.ToString("dd-MM-yyyy");

        conn.Open();
        string str = "select * from MainMessagTable where sender_id = '" + Label3.Text + "'  and reciver_id = '" + Label6.Text + "' or sender_id='"+ Label6.Text + "' and reciver_id='"+ Label3.Text + "' order by mssg_time";
        SqlCommand cmd = new SqlCommand(str, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        string time = date.ToString("HH:mm:ss");
        conn.Open();
        string query = "insert into MainMessagTable (sender_id,reciver_id,mssg_text,mssg_time,person_name) values('"+ Label3.Text +"','"+ Label6.Text +"','"+ TextBox1.Text +"','"+ time +"','" +Button1.Text.ToString()+"')";
        SqlCommand cmd = new SqlCommand(query, conn);
        int i = cmd.ExecuteNonQuery();
        conn.Close();
        if (i >= 1)
        {
            TextBox1.Text = "";
            LiveChat();
        }
    }
}