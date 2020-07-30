using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class HTML_AgentLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //Login click
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from agent_master_tbl where agent_id='" + txtagentid.Text.Trim() + "' AND password='" + txtpassword.Text.Trim() + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Login Successful');</script>");
                    Session["username"] = dr.GetValue(11).ToString();
                    Session["fullname"] = dr.GetValue(0).ToString();
                    Session["role"] = "Agent";
                    //Session["status"] = dr.GetValue(10).ToString();
                }
                Response.Redirect("AgentMember.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}