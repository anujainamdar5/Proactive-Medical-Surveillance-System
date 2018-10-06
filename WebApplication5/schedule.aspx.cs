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

namespace WebApplication5
{
    public partial class schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible=false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!TextBox1.Text.Equals(""))
            {
                if (Calendar1.SelectedDate > Calendar1.TodaysDate)
                {
                  //  if (DropDownList1.SelectedValue.notEquals("--select--"))
                   
                        MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                        MongoClient mongo = new MongoClient();
                        var settings = new MongoClientSettings { };
                        var client1 = new MongoClient(settings);
                        var db = client.GetDatabase("MCS");
                        var collection = db.GetCollection<BsonDocument>("schedule");
                    //Calendar1.SelectedDate = Calendar1.SelectedDate.AddDays(1);
                   string dt= Calendar1.SelectedDate.AddDays(1).ToString().Substring(0,10);
                    
                        var documnt = new BsonDocument
            {
                {"Fact_Name",TextBox1.Text},
                { "Area",DropDownList1.SelectedValue},
                {"Date",dt},

           };
                        collection.InsertOneAsync(documnt);
                        Label1.Text = "Session scheduled";
                        Label1.ForeColor = System.Drawing.Color.Green;
                        Label1.Visible = true;
                    }


                
                    else
                    {
                        Label1.Text = "Please select an upcoming date.";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
                }
            else
            {
                Label1.Text = "Please enter details properly";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    }
