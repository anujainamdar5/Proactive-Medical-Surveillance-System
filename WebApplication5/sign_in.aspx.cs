using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Driver;
using System.Configuration;
using MongoDB.Bson;
using System.Threading.Tasks;
using MongoDB.Bson.Serialization;
using MongoDB.Bson.IO;
using System.Text.RegularExpressions;
using System.Web.UI.DataVisualization.Charting;

namespace WebApplication5
{
    

    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error.Visible = false;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void si_Click(object sender, EventArgs e)
        {
            if (uname.Text.Equals("managerhead"))
            {
                if (adpass.Text.Equals("ganpatibappa"))
                {
                    Response.Redirect("admin_login.aspx");
                }
                else
                {
                    error.Text = "invalid password";
                    error.Visible = true;
                    upass.Text = "";
                }
            }
            else
            {
                error.Text = "invalid user";
                error.Visible = true;
                uname.Text = "";
            }

        }

        protected void dsi_Click(object sender, EventArgs e)
        {
            // session_code = sdoclog.Text;
            // Session["sdoclog"] = session_code;
            ConfigurationSettings.AppSettings["sessioncode"] = sdoclog.Text ;
            if (!Regex.IsMatch(sdoclog.Text,
                                  @"^(\+\d{1,3}[- ]?)?\d{10}$"))
            {
                error1.Text = "Invalid session code";
                error1.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Equals("Workers Information") && docpass.Text.Equals("wi@123"))
            { Response.Redirect("winfo.aspx"); }
            else if (DropDownList1.SelectedValue.Equals("Vision Test") && docpass.Text.Equals("vt@123"))
            { Response.Redirect("wvision.aspx"); }
            else if (DropDownList1.SelectedValue.Equals("Body Measurements") && docpass.Text.Equals("bm@123"))
            { Response.Redirect("bm.aspx"); }
            else if (DropDownList1.SelectedValue.Equals("General Examination") && docpass.Text.Equals("gm@123"))
            { Response.Redirect("gexam.aspx"); }
            else if (DropDownList1.SelectedValue.Equals("Advise") && docpass.Text.Equals("ad@123"))
            { Response.Redirect("advise.aspx"); }
            else
            {
                error1.Text = "please enter valid password ";
                error1.Visible = true;

            }




            //    if (sdoclog.Text.Equals("") && (docpass.Text.Equals("wi@123")))
              //  Response.Redirect("winfo.aspx");
            //else
              //  {
                  //  error1.Text = "invalid password";
                //    error1.Visible = true;
             //       docpass.Text = "";
               //     error1.Text = "invalid user";
                 //   error1.Visible = true;
                   // sdoclog.Text = "";
            //}
            }
            
            
                
protected void sdoclog_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void adpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            double x = 100;
            double y = 85;
            Series series1 = new Series("Column");
            series1.ChartType = SeriesChartType.Column;
            series1.Points.AddXY(10, 20);
            series1.Points.AddXY(10, 30);
            series1.Points.AddXY(30, 50);
            series1.Points.AddXY(x, y);
            Chart1.Series.Add(series1);
        }
    }

        }
    
