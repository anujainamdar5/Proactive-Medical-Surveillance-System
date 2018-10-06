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
    public partial class wvision : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;
           // token_error.Visible = false;
            vision.Visible = false;
            Button1.Visible = false;

            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                Button1.Visible = true;

            }




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
                    
                    Label2.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    Label3.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }
            winfo();
        }




        public void winfo()
        {

            string token = (string)(Session["Token_no"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    w_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                    w_age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                    w_sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();
                }
            }
        }






        protected void check_vision_Click(object sender, EventArgs e)
        {
           
                if (!(distr.Text.Equals("6")))
                {
                    vision.Text = "Abnormal";
                }
                else if (!(dist_l.Text.Equals("6")))
                {
                    vision.Text = "Abnormal";
                }
                else if (!(near_r.Text.Equals("6")))
                {
                    vision.Text = "Abnormal";
                }
                else if (!(near_l.Text.Equals("6")))
                {
                    vision.Text = "Abnormal";
                }
                else if (!(distr.Text.Equals("6")))
                {
                    vision.Text = "Abnormal";
                }
                else if (!(color_r.Text.Equals("3")))
                {
                    vision.Text = "Abnormal";
                }
               
                else
                {
                    vision.Text = "Normal";
                }



                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("vision_test");

                var documnt = new BsonDocument
            {
                {"token_no",(string)(Session["Token_no"])},
                { "distant_right",distr.Text},
                {"distant_left",dist_l.Text}, // focus on this
                {"near_right",near_r.Text},
                { "near_left",near_l.Text},
                { "color",color_r.Text}, // Person To Contact
                
                { "Session_code",Label1.Text}
           };
                collection.InsertOneAsync(documnt);
                Label5.Visible = true;
                token_no.Text="";
                distr.Text = "6";
                dist_l.Text = "6";
                near_l.Text = "6";
                near_r.Text = "6";
                color_r.Text = "3";
                
               
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }
    }

       
    }
    
