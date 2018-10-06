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
namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
           // if (Calendar1.SelectedDate.Equals("-62135596800000"))
          //  { Label2.Visible = true; }
            if (das.Text.Equals(""))
                Label3.Visible = true;

            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("book_session");

                var documnt = new BsonDocument
            {
                {"book_date",Calendar1.SelectedDate},
                {"book_details",das.Text }

           };
                collection.InsertOneAsync(documnt);
                das.Text = "";
            }
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            
        }
    }
    }
    
