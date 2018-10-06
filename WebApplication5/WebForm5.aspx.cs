using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
           
           
        }

        protected void enter_Click(object sender, EventArgs e)
        {
            if(fname.Text.Equals("")|| DropDownList1.SelectedItem.Equals(""))
             //  {
              //  if (DropDownList1.SelectedItem.Equals(""))
                {
                Label3.Visible = true;

            }
           
            fname.Text = "";
            DropDownList1.SelectedValue = "--select--";
        }
        }
    }
