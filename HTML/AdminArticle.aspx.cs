using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class HTML_AdminArticle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    static string global_filepath;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }


    //Go button
    protected void Button4_Click(object sender, EventArgs e)
    {
        getArticleByID();
    }

    //Add button
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkIfArticleExists())
        {
            Response.Write("<script>alert('Article is already exists.');</script>");
        }
        else
        {
            addNewArticle();
        }
    }

    //Update button
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkIfArticleExists())
        {
            updateArticleByID();
        }
        else
        {
            Response.Write("<script>alert('Article with this ID does not Exist');</script>");
        }
    }

    //Delete button
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkIfArticleExists())
        {
            deleteArticleByID();
        }
        else
        {
            Response.Write("<script>alert('Article with this ID does not Exist');</script>");
        }
    }


    //Go button
    void getArticleByID()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from article_master_tbl WHERE article_id='" + txtarticleid.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtpublishname.Text = dt.Rows[0]["publisher_name"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["article_type"].ToString().Trim();
                txtpublishdate.Text = dt.Rows[0]["publish_date"].ToString();
                txtarticletitle.Text = dt.Rows[0]["article_title"].ToString().Trim();
                txtarticledesc.Text = dt.Rows[0]["article_description"].ToString().Trim();
                global_filepath = dt.Rows[0]["book_img_link"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid Article ID');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //User Defined functions
    //Add Button
    void addNewArticle()
    {
        try
        {

            //Image link store code
            string filepath = "~/Article/article.png";
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("Article/" + filename));
            filepath = "~/Article/" + filename;

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO article_master_tbl" +
                "(article_id,publisher_name,article_type,publish_date,article_title,article_description,article_img_link) " +
                "values(@article_id,@publisher_name,@article_type,@publish_date,@article_title,@article_description,@article_img_link)", con);

            cmd.Parameters.AddWithValue("@article_id", txtarticleid.Text.Trim());
            cmd.Parameters.AddWithValue("@publisher_name", txtpublishname.Text.Trim());
            cmd.Parameters.AddWithValue("@article_type", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@publish_date", txtpublishdate.Text.Trim());
            cmd.Parameters.AddWithValue("@article_title", txtarticletitle.Text.Trim());
            cmd.Parameters.AddWithValue("@article_description", txtarticledesc.Text.Trim());
            cmd.Parameters.AddWithValue("@article_img_link", filepath);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Article Added Successfully.');</script>");
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //Update button
    void updateArticleByID()
    {
        try
        {
            //Image link store code
            string filepath = "~/Article/article";
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            if (filename == "" || filename == null)
            {
                filepath = global_filepath;
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("Article/" + filename));
                filepath = "~/Article/" + filename;
            }

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE article_master_tbl SET publisher_name=@publisher_name, article_type=@article_type," +
                " publish_date=@publish_date, article_title=@article_title, article_description=@article_description," +
                "article_img_link=@article_img_link WHERE article_id='" + txtarticleid.Text.Trim() + "'", con);

            cmd.Parameters.AddWithValue("@publisher_name", txtpublishname.Text.Trim());
            cmd.Parameters.AddWithValue("@article_type", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@publish_date", txtpublishdate.Text.Trim());
            cmd.Parameters.AddWithValue("@article_title", txtarticletitle.Text.Trim());
            cmd.Parameters.AddWithValue("@article_description", txtarticledesc.Text.Trim());
            cmd.Parameters.AddWithValue("@article_img_link", filepath);

            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Articles Updated Successfully');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    //Delete button function
    void deleteArticleByID()
    {
        if (checkIfArticleExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from article_master_tbl WHERE article_id='" + txtarticleid.Text.Trim() + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Article deleted successfully !!!');</script>");
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

    //clearform
    void clearForm()
    {
        txtarticleid.Text = "";
        txtpublishname.Text = "";
        DropDownList1.SelectedValue = "";
        txtpublishdate.Text = "";
        txtarticletitle.Text = "";
        txtarticledesc.Text = "";
    }

    //check
    bool checkIfArticleExists()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from article_master_tbl where article_id='" + txtarticleid.Text.Trim() + "';", con);
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