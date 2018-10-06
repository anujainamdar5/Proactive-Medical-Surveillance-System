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

namespace MCS_trial
{
    //string scc = (string)(Session["sdoclog"]);
    public partial class winfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error_name.Visible = false;
            error_token.Visible = false;
            Label5.Visible = false;

            Button1.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                Button1.Visible = true;

            }


            Label1.Text = (string)(Session["Session_code"]);
            Session["Session_code"] = Label1.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
Label2.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    Label3.Text= cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }

        }

        protected void save_Click(object sender, EventArgs e)
        {

            if (!Regex.IsMatch(wname.Text, @"^[A-z ]+$", RegexOptions.IgnorePatternWhitespace))
            {
                WebApplication5.prompt.Alert("Invalid worker's name");
               // wname.Text = "";
            }
            else if (!Regex.IsMatch(token.Text,@"^(\+\d{1,3}[- ]?)?\d{7}$"))
            {
                WebApplication5.prompt.Alert("Invalid token number");
                //token.Text = "";
            }
            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("worker_info");

                var documnt = new BsonDocument
            {
                {"w_Name",wname.Text},
                {"token_no",token.Text}, // focus on this
                {"w_age",age.Text},
                { "w_sex",RadioButtonList1.SelectedValue},
                { "Date_of_employment", Calendar1.SelectedDate.ToString("yyyy-MM-dd HH':'mm':'ss")},
                { "Materials_handleld",mathandled.Text}, // Person To Contact
                { "Occupation",woccupation.Text},
                { "Session_code",Label1.Text}
           };
                collection.InsertOneAsync(documnt);
                Label5.Visible = true;
                wname.Text = "";
                token.Text = "";
                age.Text = "";
                //  Calendar1.SelectedDate="";
                mathandled.Text = "";
                woccupation.Text = "";
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_in.aspx");
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