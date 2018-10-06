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
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var filter = Builders<BsonDocument>.Filter.Eq("uname", uname.Text) & Builders<BsonDocument>.Filter.Eq("pwd", pwd.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    int x = cursor.Result.Current.Count<BsonDocument>();

                    if (x > 0)
                    {
                        string designation = cursor.Result.Current.ElementAt<BsonDocument>(0)["designation"].ToString();
                        Session["designation"] = designation;
                        Session["Session_code"] = "";
                        // Session["Session_code"] = ssc.Text;
                        if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
                        {
                            Response.Redirect("admin_login.aspx");
                        }
                        else
                            Response.Redirect("ws.aspx");
                    }

                }
            }
        }
    }
}