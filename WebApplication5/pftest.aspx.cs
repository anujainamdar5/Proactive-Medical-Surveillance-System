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
using MongoDB.Driver.GridFS;
using System.IO;

namespace WebApplication5
{
    public partial class pftest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            home.Visible = false;
            Label8.Visible = false;
            pft_panel.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                home.Visible = true;

            }

            Label5.Text = (string)(Session["Session_code"]);
            Session["Session_code"] = Label5.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label5.Text);
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
            collection = db.GetCollection<BsonDocument>("fs.files");
            filter = Builders<BsonDocument>.Filter.Eq("metadata.session_code", Label5.Text);
            var result = collection.Find(filter).Count();
            total_count.Text = result.ToString();
           // winfo();
        }



        protected void up_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var db = client.GetDatabase("MCS");
            string destination_name = token_no.ToString() + "_" + fact_name.ToString() + ".pdf";

            var options = new GridFSUploadOptions
            {
                // ChunkSizeBytes = 64512 , // 63KB
                Metadata = new BsonDocument
                 {
                     {"session_code",Label5.Text.ToString()},
                     { "token_no", token_no.Text.ToString()},
                     {"status",pft_status.SelectedValue },
                     {"advice",advice.Text },
                     {"test","xray" }
                 }
            };

            GridFSBucket bucket = new GridFSBucket(db);
            using (var s = File.OpenRead(path.Text.ToString()))
            {
                var t = Task.Run(() =>
                {
                    return bucket.UploadFromStreamAsync(destination_name.ToString(), s, options);
                });

                Label8.Text = t.Result.ToString();
            }

            prompt.form_status("Entry saved successfully.");
            path.Visible = false;
            up.Visible = false;
            attach.Visible = false;
            browser.Visible = false;
            path.Text = "";
            pft_status.SelectedValue = "Normal";
            advice.Text = "";
            w_age.Text = "";
            w_name.Text = "";
            w_sex.Text = "";
            token_no.Text = "";
        }

        protected void Download_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (pft_status.SelectedValue.Equals("Yes"))
            {
                path.Visible = true;
                up.Visible = true;
                attach.Visible = true;
                browser.Visible = true;

            }
        }

        protected void browser_Click(object sender, EventArgs e)
        {
            path.Text = prompt.Browse();
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
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label5.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
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

        protected void path_TextChanged(object sender, EventArgs e)
        {
            path.Visible = true;
            up.Visible = true;
            attach.Visible = true;
            browser.Visible = true;

        }

        protected void token_no_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void find_worker_Click(object sender, EventArgs e)
        {
            winfo();
            pft_panel.Visible = true;
        }



        public void winfo()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label5.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
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

        protected void advice_TextChanged(object sender, EventArgs e)
        {

        }
    }
} 