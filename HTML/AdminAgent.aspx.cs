using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HTML_AdminAgent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go button
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        getAgentById();
    }

    //Active
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        updateAgentStatusById("active");
    }

    //Pending
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        updateAgentStatusById("pending");
    }

    //Deactive
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        updateAgentStatusById("deactive");
    }


    //Delete Agent
    protected void Button2_Click(object sender, EventArgs e)
    {
        deleteAgentById();
    }


    //User defined functions

    //Go Button click
    void getAgentById()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }

            SqlCommand cmd = new SqlCommand("SELECT * from agent_master_tbl where agent_id='" + txtagentid.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtagentname.Text = dr.GetValue(0).ToString();
                    txtaccountstatus.Text = dr.GetValue(13).ToString();
                    txtagentdob.Text = dr.GetValue(1).ToString();
                    txtagentcontact.Text = dr.GetValue(2).ToString();
                    txtagentemail.Text = dr.GetValue(3).ToString();
                    txtagentstate.Text = dr.GetValue(4).ToString();
                    txtagentcity.Text = dr.GetValue(5).ToString();
                    txtpincode.Text = dr.GetValue(6).ToString();
                    txtbankname.Text = dr.GetValue(7).ToString();
                    txtbranch.Text = dr.GetValue(8).ToString();
                    txtbankpincode.Text = dr.GetValue(9).ToString();
                    txtaddress.Text = dr.GetValue(10).ToString();
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

    //Account Status
    void updateAgentStatusById(string status)
    {
        if (checkIfAgentExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE agent_master_tbl SET account_status='" + status + "' WHERE agent_id='" + txtagentid.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Agent Status Updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Agent ID');</script>");
        }

    }


    //delete Agent permanently
    void deleteAgentById()
    {
        if (checkIfAgentExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from agent_master_tbl WHERE agent_id='" + txtagentid.Text.Trim() + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Agent deleted successfully !!!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Agent ID');</script>");
        }

    }


    //clear form
    void clearForm()
    {
        txtagentname.Text = "";
        txtagentdob.Text = "";
        txtagentcontact.Text = "";
        txtagentemail.Text = "";
        txtagentstate.Text = "";
        txtagentcity.Text = "";
        txtpincode.Text = "";
        txtbankname.Text = "";
        txtbranch.Text = "";
        txtbankpincode.Text = "";
        txtaddress.Text = "";
        txtaccountstatus.Text = "";
    }

    //Check Author exist

    bool checkIfAgentExists()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from agent_master_tbl where agent_id='" + txtagentid.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            return false;
        }
    }

}