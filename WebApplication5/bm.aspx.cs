using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using MongoDB.Driver;
using System.Configuration;
using MongoDB.Bson;
using System.Threading.Tasks;
using MongoDB.Bson.Serialization;
using MongoDB.Bson.IO;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Label2.Visible = false;
            // Label3.Visible = false;
            


            Label1.Text = (string)(Session["Session_code"]);
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
                    //    for (j = 0; j < i; j++)
                    Label9.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    Label10.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }




        }

        protected void ht_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(ht.Text,
                                     @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label5.Text = ("Please enter height properly");
            }
            else if (!Regex.IsMatch(wt.Text,
                                    @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label6.Text = ("Please enter weight properly");
            }
            else if (!Regex.IsMatch(chest.Text,
                                      @"^\d{1,3}(?:\.\d{1,2})?$"))
            {

                Label7.Text = ("Please enter chest properly");
            }
            else if (!Regex.IsMatch(abdomen.Text,
                                      @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label8.Text = ("Please enter abdomen properly");
            }
            else
            {
                double bmi = (Convert.ToDouble(wt.Text)) / (((Convert.ToDouble(ht.Text) * (Convert.ToDouble(ht.Text)) / 10000)));
                bmi = Math.Round(bmi,2);
                string z = Convert.ToString(bmi);
                Label2.Text = z;
                double wcr = (Convert.ToDouble(chest.Text)) / (Convert.ToDouble(abdomen.Text));
                wcr = Math.Round(wcr,2);
                string a = Convert.ToString(wcr);
                Label3.Text = a;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (Regex.IsMatch(TextBox1.Text,
                                  @"^(\+\d{1,3}[- ]?)?\d{7}$"))
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("body_measure");

                var documnt = new BsonDocument
            {
                {"token_no",TextBox1.Text },
                {"height",ht.Text},
                {"weight",wt.Text },
                {"chest",chest.Text },
                {"abdomen",abdomen.Text },
                {"BMI",Label2.Text },
                {"WRC",Label3.Text },
                { "Session_code",Label1.Text}

            };
                collection.InsertOneAsync(documnt);
                Label4.Visible = true;
                Label4.Text = "entry sussefully saved.";
                ht.Text = "";
                wt.Text = "";
                chest.Text = "";
                abdomen.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                TextBox1.Text = "";
            }

            else
            {
                Error.Text = "Invalid token number";
                Error.Visible = true;
            }
        }


    }
}