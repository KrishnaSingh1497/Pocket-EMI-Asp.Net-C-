using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HTML_AdminBank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go button
    protected void Button1_Click(object sender, EventArgs e)
    {
        getBankById();
    }

    //Add Bank
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkIfBankExists())
        {
            Response.Write("<script>alert('Bank with this ID already Exist. You cannot add Bank with the same Bank ID');</script>");
        }
        else
        {
            addNewBank();
        }
    }

    //Update Bank
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkIfBankExists())
        {
            updateBank();
        }
        else
        {
            Response.Write("<script>alert('Bank with this ID does not Exist');</script>");
        }
    }

    //Delete Bank
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (checkIfBankExists())
        {
            deleteBank();
        }
        else
        {
            Response.Write("<script>alert('Bank with this ID does not Exist');</script>");
        }
    }


    //user defined function
    //Add button function
    void addNewBank()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO bank_master_tbl(bank_id,bank_name,branch,state,city,pincode,address) values(@bank_id,@bank_name,@branch,@state,@city,@pincode,@address)", con);

            cmd.Parameters.AddWithValue("@bank_id", txtbankid.Text.Trim());
            cmd.Parameters.AddWithValue("@bank_name", txtbankname.Text.Trim());
            cmd.Parameters.AddWithValue("@branch", txtbranchname.Text.Trim());
            cmd.Parameters.AddWithValue("@state", txtstate.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Bank added successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    //Update button function
    void updateBank()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE bank_master_tbl SET bank_name=@bank_name, branch=@branch, state=@state, city=@city, pincode=@pincode, address=@address  WHERE bank_id='" + txtbankid.Text.Trim() + "' ", con);
            cmd.Parameters.AddWithValue("@bank_name", txtbankname.Text.Trim());
            cmd.Parameters.AddWithValue("@branch", txtbranchname.Text.Trim());
            cmd.Parameters.AddWithValue("@state", txtstate.Text.Trim());
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Bank updated successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //Delete button function
    void deleteBank()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE from bank_master_tbl WHERE bank_id='" + txtbankid.Text.Trim() + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Bank deleted successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }






    //Check Author exist

    bool checkIfBankExists()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from bank_master_tbl where bank_id='" + txtbankid.Text.Trim() + "';", con);
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


    /// <summary>
    /// get GO button value from author id
    /// </summary>
    void getBankById()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from bank_master_tbl where bank_id='" + txtbankid.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                txtbankname.Text = dt.Rows[0][1].ToString();
                txtbranchname.Text = dt.Rows[0][2].ToString();
                txtstate.Text = dt.Rows[0][3].ToString();
                txtcity.Text = dt.Rows[0][4].ToString();
                txtpincode.Text = dt.Rows[0][5].ToString();
                txtaddress.Text = dt.Rows[0][6].ToString();
            }
            else
            {
                Response.Write("<script>alert('Bank does not exist.');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    void clearForm()
    {
        txtbankid.Text = "";
        txtbankname.Text = "";
        txtbranchname.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtpincode.Text = "";
        txtaddress.Text = "";
    }
}