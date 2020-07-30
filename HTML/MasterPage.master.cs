using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTML_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Hello.Text = "Hello, " + Session["username"].ToString();
            Logout.Visible = true;
            LinkButton1.Visible = false;
        }
        else
        {
            LinkButton1.Visible = true;
            Hello.Visible = false;
            Logout.Visible = false;
            //Response.Redirect("Login.aspx");
        }

    }

    //Logout
    protected void Logout_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Abandon();
        Session.Remove("username");

        Session["username"] = null;
        Logout.Visible = false;
        LinkButton1.Visible = true;

    }
}
