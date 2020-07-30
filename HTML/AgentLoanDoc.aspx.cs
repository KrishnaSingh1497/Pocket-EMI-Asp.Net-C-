using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class HTML_AgentLoanDoc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go button
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        getLoanById();
    }

    //Active button
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        updateLoanStatusById("active");
    }

    //Pending
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        updateLoanStatusById("pending");
    }

    //Deactive
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        updateLoanStatusById("deactive");
    }


    //Delete applications
    protected void Button1_Click(object sender, EventArgs e)
    {
        deleteLoanById();
    }

    //User defined functions


    //Go Button click
    void getLoanById()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from loan_apply_form where loan_id='" + txtloanid.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtmemberid.Text = dr.GetValue(1).ToString();
                    txtloanstatus.Text = dr.GetValue(18).ToString();
                    txtemployer.Text = dr.GetValue(3).ToString();
                    txtcontactoffice.Text = dr.GetValue(4).ToString();
                    txtsalary.Text = dr.GetValue(5).ToString();
                    txtguardian.Text = dr.GetValue(6).ToString();
                    txtrelationship.Text = dr.GetValue(7).ToString();
                    txtguardiancontact.Text = dr.GetValue(8).ToString();
                    txtaddress.Text = dr.GetValue(9).ToString();
                    txtstatus.Text = dr.GetValue(10).ToString();
                    txthome.Text = dr.GetValue(11).ToString();
                    txttotalmember.Text = dr.GetValue(12).ToString();
                    txtloantype.Text = dr.GetValue(13).ToString();
                    txtloanamt.Text = dr.GetValue(14).ToString();
                    txtloantenure.Text = dr.GetValue(15).ToString();
                    txtinterest.Text = dr.GetValue(16).ToString();
                    txtissue.Text = dr.GetValue(17).ToString();
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
    void updateLoanStatusById(string status)
    {
        if (checkIfLoanExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE loan_apply_form SET loan_status='" + status + "' WHERE loan_id='" + txtloanid.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Loan Status Updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Loan ID');</script>");
        }

    }


    //delete Loan permanently
    void deleteLoanById()
    {
        if (checkIfLoanExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from loan_apply_form WHERE loan_id='" + txtloanid.Text.Trim() + "' ", con);
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
        else
        {
            Response.Write("<script>alert('Invalid Loan ID');</script>");
        }

    }


    //clear form
    void clearForm()
    {
        txtmemberid.Text = "";
        txtloanstatus.Text = "";
        txtemployer.Text = "";
        txtcontactoffice.Text = "";
        txtsalary.Text = "";
        txtguardian.Text = "";
        txtrelationship.Text = "";
        txtguardiancontact.Text = "";
        txtaddress.Text = "";
        txtstatus.Text = "";
        txthome.Text = "";
        txttotalmember.Text = "";
        txtloantype.Text = "";
        txtloanamt.Text = "";
        txtloantenure.Text = "";
        txtinterest.Text = "";
        txtissue.Text = "";

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

            SqlCommand cmd = new SqlCommand("SELECT * from loan_apply_form where loan_id='" + txtloanid.Text.Trim() + "';", con);
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