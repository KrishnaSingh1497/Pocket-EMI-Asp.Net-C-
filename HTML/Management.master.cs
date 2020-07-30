using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTML_Management : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        try
        {
            if (Session["role"].Equals(""))
            {

                //Admin

                LinkButton9.Visible = true;   //member
                LinkButton10.Visible = true;   //Agent
                LinkButton11.Visible = true;   //Bank
                LinkButton12.Visible = true;   //Loan
                LinkButton14.Visible = true;  //Article
                LinkButton15.Visible = true;   //Blog

                //Agent

                LinkButton16.Visible = false;   //member
             //   LinkButton17.Visible = false;  //Bank
               // LinkButton18.Visible = false;  //Loan
                LinkButton20.Visible = false;   //Article
                LinkButton21.Visible = false;   //Blog
                LinkButton22.Visible = false;   //LoanDoc

                //Common 
                LinkButton23.Visible = false;   //Logout
                LinkButton7.Visible = true;  //Login
                LinkButton8.Visible = false;  //Hello User


            }

            else if (Session["role"].Equals("Agent"))
            {
                //Admin

                LinkButton9.Visible = false;   //member
                LinkButton10.Visible = false;   //Agent
                LinkButton11.Visible = false;   //Bank
                LinkButton12.Visible = false;   //Loan
                LinkButton14.Visible = false;  //Article
                LinkButton15.Visible = false;   //Blog

                //Agent

                LinkButton16.Visible = true;   //member
             //   LinkButton17.Visible = true;  //Bank
             //   LinkButton18.Visible = true;  //Loan
                LinkButton20.Visible = true;   //Article
                LinkButton21.Visible = true;   //Blog
                LinkButton22.Visible = true;   //LoanDoc

                //Common 
                LinkButton23.Visible = true;   //Logout
                LinkButton7.Visible = false;  //Login

                LinkButton8.Visible = true; //Hello Agent
                LinkButton8.Text = "Hello " + Session["username"].ToString();





            }
            else if (Session["role"].Equals("Admin"))
            {
                //Admin

                LinkButton9.Visible = true;   //member
                LinkButton10.Visible = true;   //Agent
                LinkButton11.Visible = true;   //Bank
                LinkButton12.Visible = true;   //Loan
                LinkButton14.Visible = true;  //Article
                LinkButton15.Visible = true;   //Blog

                //Article

                LinkButton16.Visible = false;   //member
             //   LinkButton17.Visible = false;  //Bank
             //   LinkButton18.Visible = false;  //Loan
                LinkButton20.Visible = false;   //Article
                LinkButton21.Visible = false;   //Blog
                LinkButton22.Visible = false;   //LoanDoc

                //Common 
                LinkButton23.Visible = true;   //Logout
                LinkButton7.Visible = false;  //Login
                LinkButton8.Visible = true; //Hello Agent
                LinkButton8.Text = "Hello Admin";

            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    //logout
    protected void LinkButton23_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session["fullname"] = "";
        Session["role"] = "";
        Session["status"] = "";

        //Admin

        LinkButton9.Visible = false;   //member
        LinkButton10.Visible = false;   //Agent
        LinkButton11.Visible = false;   //Bank
        LinkButton12.Visible = false;   //Loan
        LinkButton14.Visible = false;  //Article
        LinkButton15.Visible = false;   //Blog

        //Agent

        LinkButton16.Visible = false;   //member
      //  LinkButton17.Visible = false;  //Bank
      //  LinkButton18.Visible = false;  //Loan
        LinkButton20.Visible = false;   //Article
        LinkButton21.Visible = false;   //Blog

        //Common 
        LinkButton23.Visible = false;   //Logout
        LinkButton7.Visible = true;  //Login
        LinkButton8.Visible = false;  //Hello User

        Session.Abandon();

        Response.Redirect("Login.aspx");
    }
}
