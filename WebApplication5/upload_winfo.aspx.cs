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
using System.IO;
namespace WebApplication5
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        int i=0, count=0;
        string[,] data = new string[100, 7];
        protected void Page_Load(object sender, EventArgs e)
        {
            status.Visible = false;
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
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                    scode.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Session_code"].ToString();
                }
            }
        }

        protected void upload_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("upload_winfo.aspx");
        }

        protected void read_the_file_Click(object sender, EventArgs e)
        {
            
    
            
                var reader = new StreamReader(File.OpenRead(path.Text));
              
            while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    var values = line.Split(',');

                    data[count,0] = values[0];
                    data[count,1] = values[1];
                    data[count,2] = values[2];
                    data[count,3] = values[3];
                    data[count,4] = values[4];
                    data[count,5] = values[5];
                    data[count,6] = values[6];
                 //   data[count,7] = values[7];
                //data[count, 2].Equals(values[2]);
                count++;
            }

            i = 0;
            while(i<count)
            {
                TableHeaderRow thRow = new TableHeaderRow();

                TableHeaderCell thcell1 = new TableHeaderCell();
                thcell1.Text = data[i, 0];
                thRow.Cells.Add(thcell1);

                TableHeaderCell thcell2 = new TableHeaderCell();
                thcell2.Text = data[i, 1];
                thRow.Cells.Add(thcell2);

                TableHeaderCell thcell3 = new TableHeaderCell();
                thcell3.Text = data[i, 2];
                thRow.Cells.Add(thcell3);

                TableHeaderCell thcell4 = new TableHeaderCell();
                thcell4.Text = data[i, 3];
                thRow.Cells.Add(thcell4);

                TableHeaderCell thcell5 = new TableHeaderCell();
                thcell5.Text = data[i, 4];
                thRow.Cells.Add(thcell5);

                TableHeaderCell thcell6 = new TableHeaderCell();
                thcell6.Text = data[i, 5];
                thRow.Cells.Add(thcell6);

                TableHeaderCell thcell7 = new TableHeaderCell();
                thcell7.Text = data[i, 6];
                thRow.Cells.Add(thcell7);

              /*  TableHeaderCell thcell8 = new TableHeaderCell();
                thcell8.Text = data[i, 7];
                thRow.Cells.Add(thcell8);*/
                Tab.Rows.Add(thRow);
                i++;
            }

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();

            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);

            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");

            i = 0;
            while (i < count)
            {
                var documnt = new BsonDocument
            {
                {"w_Name",data[i,0]},
                {"token_no",data[i,1]},
                {"w_age",data[i,2]},
                { "w_sex",data[i,3]},
                { "Date_of_employment",data[i,4]},
                { "Materials_handleld",data[i,5]},
                { "Occupation",data[i,6]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                collection.InsertOneAsync(documnt);
                i++;
                status.Visible = true;
                status.Text = count.ToString()+" entries uploaded into the database successfully.";
            }

        }
    

        
    }
}