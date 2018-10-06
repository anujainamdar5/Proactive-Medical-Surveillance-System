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
    public partial class example : System.Web.UI.Page
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
            var collection = db.GetCollection<BsonDocument>("worker_info");
        //    var filter = Builders<BsonDocument>.Filter.Eq("token_no",token_no.Text) &
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", "1234567890");
            var cursor = collection.FindAsync(filter);
            int count = 0;
            // int count = cursor.Result.Current.Count<BsonDocument>();
            // return cursor.Result.Current.Count<BsonDocument>();

            cursor.Wait();
            //  Label1.Text = cursor.Result.Current.Count<BsonDocument>().ToString();
            //   if (cursor.Result != null)
            //  {
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                  int count1=  cursor.Result.Current.Count<BsonDocument>();


                    TableHeaderRow thRow = new TableHeaderRow();

                    TableHeaderCell thcell1 = new TableHeaderCell();
                    thcell1.Text = "Name";
                    thRow.Cells.Add(thcell1);

                    TableHeaderCell thcell2 = new TableHeaderCell();
                    thcell2.Text = "SesisonCode";
                    thRow.Cells.Add(thcell2);

                    table1.Rows.Add(thRow);

                    for (int i = 0; i<count1; i++)
                    {
                        TableRow trow = new TableRow();

                            TableCell cell1 = new TableCell();
                        cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["w_Name"].ToString();
                        trow.Cells.Add(cell1);
                        TableCell cell2 = new TableCell();
                        cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Session_code"].ToString();
                        trow.Cells.Add(cell2);
                        
                
                        table1.Rows.Add(trow);
                         
                        
                    }
                                        Label1.Text = Convert.ToString(count1);
                    
                }

            }
        }
    }
}