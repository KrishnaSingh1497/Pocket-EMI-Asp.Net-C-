using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class HTML_AdminMember : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go button
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        getMemberById();
    }

    //Active Button
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        updateMemberStatusById("active");
    }

    //Pending
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        updateMemberStatusById("pending");
    }


    //Deactive
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        updateMemberStatusById("deactive");
    }


    //Delete User
    protected void Button2_Click(object sender, EventArgs e)
    {
        deleteMemberById();
    }

    //User Defined function

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

    //Account Status
    void updateMemberStatusById(string status)
    {
        if (checkIfMemberExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id='" + txtmemberid.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Status Updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Member ID');</script>");
        }

    }


    //delete member permanently
    void deleteMemberById()
    {
        if (checkIfMemberExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from member_master_tbl WHERE member_id='" + txtmemberid.Text.Trim() + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member deleted successfully !!!');</script>");
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
            Response.Write("<script>alert('Invalid Member ID');</script>");
        }

    }


    //clear form
    void clearForm()
    {
        txtmemberid.Text = "";
        txtmembername.Text = "";
        txtaccountstatus.Text = "";
        txtmemberdob.Text = "";
        txtmembercontact.Text = "";
        txtmemberemail.Text = "";
        txtmemberstate.Text = "";
        txtmembercity.Text = "";
        txtmemberpincode.Text = "";
        txtaddress.Text = "";
    }

    //Check Author exist

    bool checkIfMemberExists()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + txtmemberid.Text.Trim() + "';", con);
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