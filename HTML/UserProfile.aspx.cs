using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class HTML_UserProfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert(' Session Expired Login Again');</script>");
                Response.Redirect("MemberLogin.aspx");
            }
            else
            {
                getMemberLoanData();

                if (!Page.IsPostBack)
                {
                    getMemberPersonalDetails();
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "',' Session Expired Login Again');</script>");
            Response.Redirect("MemberLogin.aspx");
        }
    }

    //Update button
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "" || Session["username"] == null)
        {
            Response.Write("<script>alert(' Session Expired Login Again');</script>");
            Response.Redirect("MemberLogin.aspx");
        }
        else
        {
            updateMemberPersonalDetails();
        }
    }


    //User defined function
    //user Defined function
    void updateMemberPersonalDetails()
    {
        string password = "";
        if (txtnewpassword.Text.Trim() == "")
        {
            password = txtoldpassword.Text.Trim();
        }
        else
        {
            password = txtnewpassword.Text.Trim();
        }

        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl set full_name=@full_name," +
                "dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode," +
                "full_address=@full_address, password=@password, account_status=@account_status WHERE " +
                "member_id='" + Session["username"].ToString().Trim() + "';", con);

            cmd.Parameters.AddWithValue("@full_name", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
            cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
            cmd.Parameters.AddWithValue("@full_address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@account_status", "pending");

            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {
                Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                getMemberPersonalDetails();
                getMemberLoanData();
            }
            else
            {
                Response.Write("<script>alert('Invalid entry');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }


    }


    void getMemberPersonalDetails()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + Session["username"].ToString() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtname.Text = dt.Rows[0]["full_name"].ToString();
            txtdob.Text = dt.Rows[0]["dob"].ToString();
            txtcontactno.Text = dt.Rows[0]["contact_no"].ToString();
            txtemail.Text = dt.Rows[0]["email"].ToString();
            DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString();
            txtcity.Text = dt.Rows[0]["city"].ToString();
            txtpincode.Text = dt.Rows[0]["pincode"].ToString();
            txtaddress.Text = dt.Rows[0]["full_address"].ToString();
            txtmemberid.Text = dt.Rows[0]["member_id"].ToString();
            txtoldpassword.Text = dt.Rows[0]["password"].ToString();

            Label.Text = dt.Rows[0]["account_status"].ToString().Trim();
            if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
            {
                Label.Attributes.Add("class", "badge badge-pill badge-success");
            }
            else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
            {
                Label.Attributes.Add("class", "badge badge-pill badge-warning");
            }
            else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
            {
                Label.Attributes.Add("class", "badge badge-pill badge-danger");
            }
            else
            {
                Label.Attributes.Add("class", "badge badge-pill badge-info");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //Loan Application form status
    void getMemberLoanData()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT loan_id, loan_type, loan_amount, duration, interest_rate, issue_date, loan_status from loan_apply_form where member_id='" + Session["username"].ToString() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //check your condition here
                DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                DateTime today = DateTime.Today;
                if (today > dt)
                {
                    e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}