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
    public partial class emp_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fact_details();
            worker_list();
        }

        public void fact_details()
        {

            string Session_code = (string)(Session["Session_code"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code",Session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {

                while (cursor.Result.MoveNextAsync().Result)
                {
                    //    for (j = 0; j < i; j++)
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                    scode.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Session_code"].ToString();
                }
            }
        }

        public void worker_list()
        {
           string Session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code",Session_code);

            var cursor = collection.FindAsync(filter);
            cursor.Wait();

            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    int count1 = cursor.Result.Current.Count<BsonDocument>();


                    TableHeaderRow thRow = new TableHeaderRow();

                    TableHeaderCell thcell1 = new TableHeaderCell();
                    thcell1.Text = "Serial Number";
                    thRow.Cells.Add(thcell1);

                    TableHeaderCell thcell2 = new TableHeaderCell();
                    thcell2.Text = "Token Number";
                    thRow.Cells.Add(thcell2);

                    TableHeaderCell thcell3 = new TableHeaderCell();
                    thcell3.Text = "Name";
                    thRow.Cells.Add(thcell3);

                    TableHeaderCell thcell4 = new TableHeaderCell();
                    thcell4.Text = "Age";
                    thRow.Cells.Add(thcell4);

                    TableHeaderCell thcell5 = new TableHeaderCell();
                    thcell5.Text = "Sex";
                    thRow.Cells.Add(thcell5);

                    Table1.Rows.Add(thRow);

                    for (int i = 0; i < count1; i++)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = Convert.ToString(i + 1);
                        trow.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["token_no"].ToString();
                        trow.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["w_Name"].ToString();
                        trow.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["w_age"].ToString();
                        trow.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["w_sex"].ToString();
                        trow.Cells.Add(cell5);

                        Table1.Rows.Add(trow);


                    }
   w_count.Text = Convert.ToString(count1);
                }
         
           
            }
                }


    }
}