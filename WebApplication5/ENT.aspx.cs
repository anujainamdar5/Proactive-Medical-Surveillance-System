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
using System.Web.UI.DataVisualization.Charting;

namespace WebApplication5
{
    public partial class ENT : System.Web.UI.Page
    {
        int r1 = 0, r2 = 0, r3 = 0, r4 = 0, r5 = 0, r6 = 0;

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("info_report.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fact_details();
            get_values();
            plot();
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
                    fname.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    farea.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                }
            }
        }


        public void get_values()
        {
            string Session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("advice");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code",Session_code); //& Builders<BsonDocument>.Filter.Gt("height", "151") & Builders<BsonDocument>.Filter.Lt("height", "161");

            var cursor = collection.FindAsync(filter);
            cursor.Wait();

            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    int count1 = cursor.Result.Current.Count<BsonDocument>();
                    for (int i = 0; i < count1; i++)
                    {
                        string status = cursor.Result.Current.ElementAt<BsonDocument>(i)["Fitness"].ToString();
                        
                        if (status.Equals("Fit"))
                            r1++;
                        else 
                            r2++;
                   
                    }
                    total_w.Text = Convert.ToString(count1);
                    tr1.Text = Convert.ToString(r1);
                    tr2.Text = Convert.ToString(r2);
                    
                }

            }
        }


        public void plot()
        {
            double ir1, ir2;
            double total = Convert.ToDouble(total_w.Text);

            ir1 = (r1 / total) * 100;
            ir2 = (r2 / total) * 100;
           

            ir1 = Math.Round(ir1, 2);
            ir2 = Math.Round(ir2, 2);
           

            pr1.Text = Convert.ToString(ir1);
            pr2.Text = Convert.ToString(ir2);
            

            Series series1 = new Series("Column");
            series1.ChartType = SeriesChartType.Column;
            series1.Points.AddXY(1, ir1);
            series1.Points.AddXY(2, ir2);
            Chart1.Series.Add(series1);

        }


        


    }
}
