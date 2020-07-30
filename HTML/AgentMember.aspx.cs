using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class HTML_AgentMember : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //View user
    protected void Button2_Click1(object sender, EventArgs e)
    {
        getMemberById();
    }


    //User defined functions


    //Go Button click
    void getMemberById()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + txtmemberid.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtmembername.Text = dr.GetValue(0).ToString();
                    txtaccountstatus.Text = dr.GetValue(10).ToString();
                    txtmemberdob.Text = dr.GetValue(1).ToString();
                    txtmembercontact.Text = dr.GetValue(2).ToString();
                    txtmemberemail.Text = dr.GetValue(3).ToString();
                    txtmemberstate.Text = dr.GetValue(4).ToString();
                    txtmembercity.Text = dr.GetValue(5).ToString();
                    txtmemberpincode.Text = dr.GetValue(6).ToString();
                    txtaddress.Text = dr.GetValue(7).ToString();
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid ID');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}