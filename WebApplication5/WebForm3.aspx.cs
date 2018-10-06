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
using System.Windows.Input;
using System.Windows.Forms;

using WebApplication5.Models;
namespace MCS_trial
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        //  public int x;
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
        }

        protected void btnStartSession_Click(object sender, EventArgs e)
        {

            if (!Regex.IsMatch(p_contact.Text,
                @"^[A-z]+$", RegexOptions.IgnoreCase))
            {
                WebApplication5.prompt.Alert("Invalid name of person to contact.");
               // Label1.Visible = true;
               // p_contact.Text = "";
            }
            else if (!Regex.IsMatch(PTCno.Text,
                                   @"^(\+\d{1,3}[- ]?)?\d{10}$"))
            {
                WebApplication5.prompt.Alert("Invalid number of person to contact.");
                //  Label2.Visible = true;
                //PTCno.Text = "";
            }

            else
            {
                int[] test = new int[9];
                for (int i = 0; i < 9; i++)
                {
                    if (tests.Items[i].Selected)
                        test[i] = 1;
                    else
                        test[i] = 0;
                }

                string pro = WebApplication5.prompt.ShowDialog("Are you sure that the information entered is correct?", "Please confirm");

                if (pro.Equals("Yes"))
                {
                    MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                    MongoClient mongo = new MongoClient();

                    var settings = new MongoClientSettings { };
                    var client1 = new MongoClient(settings);

                    var db = client.GetDatabase("MCS");
                    var collection = db.GetCollection<BsonDocument>("fact_details");

                    var documnt = new BsonDocument
            {
                {"Fact_Name",factname.Text},
                {"Area",DropDownList1.SelectedValue}, // focus on this
                {"Address",TextBox2.Text},
                { "Date", Calendar2.SelectedDate.ToString("yyyy-MM-dd")},
                { "PTC_name",p_contact.Text}, // Person To Contact
                { "PTC_no",PTCno.Text},
                { "Session_code",session_code.Text},
                { "selected_test", new BsonArray { test[0], test[1], test[2], test[3], test[4], test[5], test[6], test[7], test[8]} }
            // { "selected_test", new BsonArray { tests.Items[0].Selected, tests.SelectedValue[1], tests.SelectedValue[2], tests.SelectedValue[3] , tests.SelectedValue[4], tests.SelectedValue[5], tests.SelectedValue[6], tests.SelectedValue[7], tests.SelectedValue[8] }  }
                };
                    collection.InsertOneAsync(documnt);
                    Label3.Text = "Session started successfully";
                    Label3.Visible = true;
                    var collection1 = db.GetCollection<BsonDocument>("schedule");

                    var documnt1 = new BsonDocument
            {
                {"Fact_Name",factname.Text},
                {"Area",DropDownList1.SelectedValue}, // focus on this
                { "Date", Calendar2.SelectedDate.ToString("yyyy-MM-dd ")},
           };
                    collection1.InsertOneAsync(documnt1);
                }
            }
        }

        protected void Session_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count, flag = 0;

            for (int j = 0; j < 20; j++)
            {
                for (int i = 0; i < 2; i++)
                {
                    session_code.Text = (Convert.ToString(random.Next(1000000000, 2000000000))); // to specify range for random number
                }
                count = check();
                if (count == 0)
                {
                    flag = 1;
                    break;
                }
                else continue;
            }
           
        } 
        public int check()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);

            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            var cursor = collection.FindAsync(filter);
            int count = 0;
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    count = cursor.Result.Current.Count<BsonDocument>();
                }
            }
            return count;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("sign_in.aspx");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("schedule");
           // Calendar2.SelectedDate = DateTime.Today.AddDays(1);
            string sd = (Calendar2.SelectedDate.ToString("yyyy-MM-dd"));
            
            var filter = Builders<BsonDocument>.Filter.Gt("Date", sd);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {

                    if (cursor.Result.Current.Count<BsonDocument>() > 0)
                    {
                        factname.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        DropDownList1.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();

                    }
                }
            }
            
            var collection2 = db.GetCollection<BsonDocument>("fact_details");

            var filter1 = Builders<BsonDocument>.Filter.Gt("Fact_Name", factname.Text) & Builders<BsonDocument>.Filter.Gt("Area", DropDownList1.SelectedValue);
            var cursor1 = collection2.FindAsync(filter1);
            cursor1.Wait();
            using (cursor1.Result)
            {
                while (cursor1.Result.MoveNextAsync().Result)
                {

                    if (cursor1.Result.Current.Count<BsonDocument>() > 0)
                    {
                        TextBox2.Text = cursor1.Result.Current.ElementAt<BsonDocument>(0)["Address"].ToString();
                        // DropDownList1.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                        p_contact.Text = cursor1.Result.Current.ElementAt<BsonDocument>(0)["PTC_name"].ToString();
                        PTCno.Text = cursor1.Result.Current.ElementAt<BsonDocument>(0)["PTC_no"].ToString();


                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void tests_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
        
        
