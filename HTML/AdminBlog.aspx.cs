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

public partial class HTML_AdminBlog : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N4MFI9K;Initial Catalog=ProjectPocketEMI;Integrated Security=True");
    static string global_filepath;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    //Go Button
    protected void Button4_Click(object sender, EventArgs e)
    {
        getBlogByID();
    }

    //Add button
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkIfBlogExists())
        {
            Response.Write("<script>alert('Blog is already exists.');</script>");
        }
        else
        {
            addNewBlog();
        }
    }

    //Update button
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkIfBlogExists())
        {
            updateBlogByID();
        }
        else
        {
            Response.Write("<script>alert('Blog with this ID does not Exist');</script>");
        }
    }

    //Delete button
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkIfBlogExists())
        {
            deleteBlogByID();
        }
        else
        {
            Response.Write("<script>alert('Blog with this ID does not Exist');</script>");
        }
    }


    //Go button
    void getBlogByID()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from blog_master_tbl WHERE blog_id='" + txtblogid.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtpublishname.Text = dt.Rows[0]["publisher_name"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["blog_type"].ToString().Trim();
                txtpublishdate.Text = dt.Rows[0]["publish_date"].ToString();
                txtblogtitle.Text = dt.Rows[0]["blog_title"].ToString().Trim();
                txtblogdesc.Text = dt.Rows[0]["blog_description"].ToString().Trim();
                global_filepath = dt.Rows[0]["blog_img_link"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid Blog ID');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //User Defined functions
    //Add Button
    void addNewBlog()
    {
        try
        {

            //Image link store code
            string filepath = "~/Blog/blog.png";
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("Blog/" + filename));
            filepath = "~/Blog/" + filename;

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO blog_master_tbl" +
                "(blog_id,publisher_name,blog_type,publish_date,blog_title,blog_description,blog_img_link) " +
                "values(@blog_id,@publisher_name,@blog_type,@publish_date,@blog_title,@blog_description,@blog_img_link)", con);

            cmd.Parameters.AddWithValue("@blog_id", txtblogid.Text.Trim());
            cmd.Parameters.AddWithValue("@publisher_name", txtpublishname.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_type", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@publish_date", txtpublishdate.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_title", txtblogtitle.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_description", txtblogdesc.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_img_link", filepath);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Blog Added Successfully.');</script>");
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //Update button
    void updateBlogByID()
    {
        try
        {
            //Image link store code
            string filepath = "~/Blog/blog";
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            if (filename == "" || filename == null)
            {
                filepath = global_filepath;
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("Blog/" + filename));
                filepath = "~/Blog/" + filename;
            }

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE blog_master_tbl SET publisher_name=@publisher_name, blog_type=@blog_type," +
                " publish_date=@publish_date, blog_title=@blog_title, blog_description=@blog_description," +
                "blog_img_link=@blog_img_link WHERE blog_id='" + txtblogid.Text.Trim() + "'", con);

            cmd.Parameters.AddWithValue("@publisher_name", txtpublishname.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_type", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@publish_date", txtpublishdate.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_title", txtblogtitle.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_description", txtblogdesc.Text.Trim());
            cmd.Parameters.AddWithValue("@blog_img_link", filepath);

            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Blogs Updated Successfully');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    //Delete button function
    void deleteBlogByID()
    {
        if (checkIfBlogExists())
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from blog_master_tbl WHERE blog_id='" + txtblogid.Text.Trim() + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Blog deleted successfully !!!');</script>");
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


    void clearForm()
    {
        txtblogid.Text = "";
        txtpublishname.Text = "";
        DropDownList1.SelectedValue = "";
        txtpublishdate.Text = "";
        txtblogtitle.Text = "";
        txtblogdesc.Text = "";
    }

    bool checkIfBlogExists()
    {
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from blog_master_tbl where blog_id='" + txtblogid.Text.Trim() + "';", con);
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