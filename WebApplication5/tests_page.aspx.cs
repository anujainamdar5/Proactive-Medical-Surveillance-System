using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class tests_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            string designation = (string)(Session["designation"]);
            if (designation == "Nurse")
            {
             
                gm.Visible = false;
                ad.Visible = false;
                vt.Visible = false;

            }

             if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                Button1.Visible = true;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
}