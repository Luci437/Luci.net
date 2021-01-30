using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/Admimhome.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/userdetails.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/userapproval.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("../MAIN_PAGES/LoginPage.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/addetails.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/Productapproval.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/addapproval.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/itemdetails.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("../ADMIN/Admincontactus.aspx");
    }
}
