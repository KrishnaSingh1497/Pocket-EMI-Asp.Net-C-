using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HTML_LoanApplicationForm : System.Web.UI.Page
{
    string LoanID = "APF";
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
        }
    }

    //Auto-generate ID
    private void GenerateAutoID()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("select Count(loan_id) from loan_application_form", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        loanid.Text = LoanID + i.ToString();
    }


    //Apply Loan
    protected void Button1_Click(object sender, EventArgs e)
    {
        ApplyNewLaonApplication();
    }


    void ApplyNewLaonApplication()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO loan_application_form(loan_id,member_id," +
                "full_name,employer,contact_office,salary,guardian_name,relationship,contact_guardian," +
                "address_guardian,status,home,home_member,loan_type,loan_amount,duration,interest_rate,issue_date,loan_status) values(@loan_id,@member_id," +
                "@full_name,@employer,@contact_office,@salary,@guardian_name,@relationship,@contact_guardian,@address_guardian,@status,@home,@home_member,@loan_type,@loan_amount,@duration,@interest_rate,@issue_date,@loan_status)", con);

            cmd.Parameters.AddWithValue("@loan_id", loanid.Text.Trim());
            cmd.Parameters.AddWithValue("@member_id", txtmemberid.Text.Trim());
            cmd.Parameters.AddWithValue("@full_name", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@employer", txtemployer.Text.Trim());
            cmd.Parameters.AddWithValue("@contact_office", txtofficecontact.Text.Trim());
            cmd.Parameters.AddWithValue("@salary", txtsalary.Text.Trim());
            cmd.Parameters.AddWithValue("@guardian_name", txtguardianname.Text.Trim());
            cmd.Parameters.AddWithValue("@relationship", txtrelationship.Text.Trim());
            cmd.Parameters.AddWithValue("@contact_guardian", txtguardiancontact.Text.Trim());
            cmd.Parameters.AddWithValue("@address_guardian", txtsalary.Text.Trim());
            cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@home", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@home_member", txttotalmember.Text.Trim());
            cmd.Parameters.AddWithValue("@loan_type", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@loan_amount", txtloanamount.Text.Trim());
            cmd.Parameters.AddWithValue("@duration", txtloanduration.Text.Trim());
            cmd.Parameters.AddWithValue("@interest_rate", txtinterest.Text.Trim());
            cmd.Parameters.AddWithValue("@issue_date", txtissuedate.Text.Trim());
            cmd.Parameters.AddWithValue("@loan_status", "pending");
            cmd.ExecuteNonQuery();
            con.Close();
            GenerateAutoID();
            clearTextBox();
            Response.Write("<script>alert('Loan Application SuccessFully Done. Wait for approval of your Application.');</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    //clear form
    void clearTextBox()
    {
        txtmemberid.Text = "";
        txtname.Text = "";
        txtemployer.Text = "";
        txtofficecontact.Text = "";
        txtsalary.Text = "";
        txtguardianname.Text = "";
        txtrelationship.Text = "";
        txtguardiancontact.Text = "";
        txtaddress.Text = "";
        txttotalmember.Text = "";
        txtloanamount.Text = "";
        txtloanduration.Text = "";
        txtinterest.Text = "";
        txtissuedate.Text = "";
    }
}