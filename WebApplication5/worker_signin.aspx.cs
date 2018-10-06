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
    public partial class worker_signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            t_error.Visible = false;
            new_worker.Visible = false;
          view.Visible = false;
            Label1.Visible = false;

           string designation= (string)(Session["designation"]);
            if (designation == "Nurse")
            {
                new_worker.Visible = false;
                gm.Visible = false;
                ad.Visible = false;
            }

            else if (designation == "Receptionist")
            {
                    new_worker.Visible = false;
                    gm.Visible = false;
                bm.Visible = false;
                vt.Visible = false;
                    ad.Visible = false;
            }

            else if (designation == "Assistant Doctor")
            {
                new_worker.Visible = false;
            }

            else if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                Home.Visible = false;
            }

          }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Token_no"] = token_no.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text) &Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) ;
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {

                    int x = cursor.Result.Current.Count<BsonDocument>();
                    if (x > 0)
                    {
                        w_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                        w_age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                        w_sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();

                    }
                    else
                    {
                        t_error.Text = "No such worker yet registered. Please register the worker first.";
                        new_worker.Visible = true;
                    }
                }
            }







        }

        protected void new_worker_Click(object sender, EventArgs e)
        {
            Response.Redirect("winfo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["Session_code"] = TextBox1.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", TextBox1.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    if (cursor.Result.Current.Count<BsonDocument>() == 0)
                    {
                        Label1.Text = "Session does not exist";
                        Label1.Visible=true;
                    }

                    else
                    {
                        view.Visible = true;
                        fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        fact_area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    }
                }

            }






        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }
    }
}