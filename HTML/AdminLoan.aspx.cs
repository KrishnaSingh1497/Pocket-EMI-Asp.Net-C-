using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HTML_AdminLoan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go button
    protected void Button1_Click(object sender, EventArgs e)
    {
        getLoanById();
    }

    //Add button
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkIfLoanExists())
        {
            Response.Write("<script>alert('Loan with this ID already Exist. You cannot add Loan with the same Loan ID');</script>");
        }
        else
        {
            addNewLoan();
        }
    }

    //Update button
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkIfLoanExists())
        {
            updateLoan();
        }
        else
        {
            Response.Write("<script>alert('Loan with this ID does not Exist');</script>");
        }
    }

    //Delete button
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (checkIfLoanExists())
        {
            deleteLoan();
        }
        else
        {
            Response.Write("<script>alert('Loan with this ID does not Exist');</script>");
        }
    }

    //Add button function
    void addNewLoan()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO loan_master_tbl(loan_id,loan_category,bank_name,duration,interest_rate) values(@loan_id,@loan_category,@bank_name,@duration,@interest_rate)", con);

            cmd.Parameters.AddWithValue("@loan_id", txtloanid.Text.Trim());
            cmd.Parameters.AddWithValue("@loan_category", txtloanname.Text.Trim());
            cmd.Parameters.AddWithValue("@bank_name", txtbankname.Text.Trim());
            cmd.Parameters.AddWithValue("@duration", txtduration.Text.Trim());
            cmd.Parameters.AddWithValue("@interest_rate", txtinterest.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Loan added successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    //Update button function
    void updateLoan()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE loan_master_tbl SET loan_category=@loan_category, bank_name=@bank_name, duration=@duration, interest_rate=@interest_rate WHERE loan_id='" + txtloanid.Text.Trim() + "' ", con);
            cmd.Parameters.AddWithValue("@loan_category", txtloanname.Text.Trim());
            cmd.Parameters.AddWithValue("@bank_name", txtbankname.Text.Trim());
            cmd.Parameters.AddWithValue("@duration", txtduration.Text.Trim());
            cmd.Parameters.AddWithValue("@interest_rate", txtinterest.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Loan updated successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //Delete button function
    void deleteLoan()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE from loan_master_tbl WHERE loan_id='" + txtloanid.Text.Trim() + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Loan deleted successfully !!!');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    //Check Author exist

    bool checkIfLoanExists()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from loan_master_tbl where loan_id='" + txtloanid.Text.Trim() + "';", con);
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
    void getLoanById()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from loan_master_tbl where loan_id='" + txtloanid.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);+

            if (dt.Rows.Count >= 1)
            {
                txtloanid.Text = dt.Rows[0][0].ToString();
                txtloanname.Text = dt.Rows[0][1].ToString();
                txtbankname.Text = dt.Rows[0][2].ToString();
                txtduration.Text = dt.Rows[0][3].ToString();
                txtinterest.Text = dt.Rows[0][4].ToString();
            }
            else
            {
                Response.Write("<script>alert('Loan does not exist.');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    void clearForm()
    {
        txtloanid.Text = "";
        txtloanname.Text = "";
        txtbankname.Text = "";
        txtduration.Text = "";
        txtinterest.Text = "";
    }
}