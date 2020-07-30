using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class HTML_AgentSignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //SignUp
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkAgentExists())
        {
            Response.Write("<script>alert('Agents already Exist with this Agent ID, try other ID');</script>");
        }
        else
        {
            SignUpNewAgent();
        }
    }


    //User defined functions
    bool checkAgentExists()
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




    void SignUpNewAgent()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO agent_master_tbl(full_name," +
                "dob,contact_no,email,state,city,pincode,bank_name,branch,bank_pincode,full_address,agent_id,password,account_status) values(@full_name," +
                "@dob,@contact_no,@email,@state,@city,@pincode,@bank_name,@branch,@bank_pincode,@full_address,@agent_id,@password,@account_status)", con);

            cmd.Parameters.AddWithValue("@full_name", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
            cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@bank_name", txtbankname.Text.Trim());
            cmd.Parameters.AddWithValue("@branch", txtbranch.Text.Trim());
            cmd.Parameters.AddWithValue("@bank_pincode", txtbankpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@full_address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@agent_id", txtagentid.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
            cmd.Parameters.AddWithValue("@account_status", "pending");
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Sign Up SuccessFul. Go to Agent Login to Login');</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


}