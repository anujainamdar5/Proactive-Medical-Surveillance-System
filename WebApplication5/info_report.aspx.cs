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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string Session_code = (string)(Session["Session_code"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {

                while (cursor.Result.MoveNextAsync().Result)
                {
                    //    for (j = 0; j < i; j++)
                    Label4.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    Label5.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                   Label6.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString().Substring(0, 10);
                    //scode.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Session_code"].ToString();
                }
            }
        }

        
    }
}