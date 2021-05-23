using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null || Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //Log in
                    LinkButton2.Visible = true; //Sign up in
                    
                    LinkButton3.Visible = false; //Log out
                    LinkButton7.Visible = false; //Hello message
                    
                    LinkButton6.Visible = true; //Admin Log in
                    LinkButton11.Visible = false; //Author management
                    LinkButton12.Visible = false; //Publisher management
                    LinkButton8.Visible = false; //Book inventory
                    LinkButton9.Visible = false; //Book issuing
                    LinkButton10.Visible = false; //Member management
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //Log in
                    LinkButton2.Visible = false; //Sign up in

                    LinkButton3.Visible = true; //Log out
                    LinkButton7.Visible = true; //Hello message
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = false; //Admin Log in
                    LinkButton11.Visible = false; //Author management
                    LinkButton12.Visible = false; //Publisher management
                    LinkButton8.Visible = false; //Book inventory
                    LinkButton9.Visible = false; //Book issuing
                    LinkButton10.Visible = false; //Member management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //Log in
                    LinkButton2.Visible = false; //Sign up in

                    LinkButton3.Visible = true; //Log out
                    LinkButton7.Visible = true; //Hello message
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; //Admin Log in
                    LinkButton11.Visible = true; //Author management
                    LinkButton12.Visible = true; //Publisher management
                    LinkButton8.Visible = true; //Book inventory
                    LinkButton9.Visible = true; //Book issuing
                    LinkButton10.Visible = true; //Member management
                }
            }
            catch(Exception ex)
            {

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //Log in
            LinkButton2.Visible = true; //Sign up in

            LinkButton3.Visible = false; //Log out
            LinkButton7.Visible = false; //Hello message

            LinkButton6.Visible = true; //Admin Log in
            LinkButton11.Visible = false; //Author management
            LinkButton12.Visible = false; //Publisher management
            LinkButton8.Visible = false; //Book inventory
            LinkButton9.Visible = false; //Book issuing
            LinkButton10.Visible = false; //Member management

            Response.Redirect("index.aspx");
        }

        // view profile
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}