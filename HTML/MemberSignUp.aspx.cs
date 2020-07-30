using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class HTML_MemberSignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //Sign UP
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkMemberExists())
        {
            Response.Write("<script>alert('Member already Exist with this Member ID, try other ID');</script>");
        }
        else
        {
            SignUpNewMember();
        }
        //SignUpNewMember();
    }

    //user defined fun

    void clearTextBox()
    {
        txtname.Text = "";
        txtdob.Text = "";
        txtcontactno.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtpincode.Text = "";
        txtaddress.Text = "";
        txtpassword.Text = "";
    }

    bool checkMemberExists()
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

    void SignUpNewMember()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name," +
                "dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values(@full_name," +
                "@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);

            cmd.Parameters.AddWithValue("@full_name", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
            cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@full_address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@member_id", txtmemberid.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
            cmd.Parameters.AddWithValue("@account_status", "pending");
            cmd.ExecuteNonQuery();
            con.Close();
            //GenerateAutoID();
            clearTextBox();
            Response.Write("<script>alert('Sign Up SuccessFul. Go to User Login to Login');</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

}