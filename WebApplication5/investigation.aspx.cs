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
    public partial class investigation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            home.Visible = false;
            token_no.Visible = true;
            test_pan.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                home.Visible = true;
            }
            session_code.Text = (string)(Session["Session_code"]);
            //Session["Session_code"] = Label5.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }
            collection = db.GetCollection<BsonDocument>("investigation");
            filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            count.Text = collection.Find(filter).Count().ToString();


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

        protected void find_worker_Click(object sender, EventArgs e)
        {
            winfo();
            if (token_no.Text != "")
                test_pan.Visible = true;
        }

        public void winfo()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
            if (collection.Find(filter).Count().ToString().Equals("0"))
            {
                prompt.Alert("INVALID TOKEN NUMBER");
                token_no.Text = "";
            }
            else
            {
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
        }

        protected void stool_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void blood_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void sputum_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void urine_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void upload_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("investigation");
            var documnt = new BsonDocument
             {
                 { "Session_code",session_code.Text},
                 {"token_no",token_no.Text},
                 { "blood",blood.SelectedValue},
                 {"urine",urine.SelectedValue},
                 {"stool",stool.SelectedValue},
                 { "sputum", sputum.SelectedValue}
            };
            collection.InsertOneAsync(documnt);
            prompt.form_status("Entry saved successfully.");
            token_no.Text = "";
            blood.SelectedValue = "Not Taken";
            urine.SelectedValue = "Not Taken";
            sputum.SelectedValue = "Not Taken";
            stool.SelectedValue = "Not Taken";
            test_pan.Visible = false;
            w_age.Text = "";
            w_name.Text = "";
            w_sex.Text = "";

        
    }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}