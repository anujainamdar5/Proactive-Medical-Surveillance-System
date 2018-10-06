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
    public partial class bmi_F : System.Web.UI.Page
    {
        int r1 = 0, r2 = 0, r3 = 0, r4 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            fact_details();
            get_values();
            plot();
        }

        protected void Chart2_Load(object sender, EventArgs e)
        {
           
        }



        public void fact_details()
        {

            //  string Session_code = ConfigurationManager.AppSettings["sessioncode"];

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", "1234567890");
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
            string Session_code = ConfigurationManager.AppSettings["sessioncode"];
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("body_measure");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Session_code); //& Builders<BsonDocument>.Filter.Gt("height", "151") & Builders<BsonDocument>.Filter.Lt("height", "161");

            var cursor = collection.FindAsync(filter);
            cursor.Wait();

            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    int count1 = cursor.Result.Current.Count<BsonDocument>();
                    for (int i = 0; i < count1; i++)
                    {
                        string bmi = cursor.Result.Current.ElementAt<BsonDocument>(i)["BMI"].ToString();
                        double b = Convert.ToDouble(bmi);
                        if (b <= 18.5)
                            r1++;
                        else if (b >= 18.5 && b <= 24.9)
                            r2++;
                        else if (b >= 25 && b <= 29.9)
                            r3++;
                        else if (b >= 30)
                            r4++;

                    }
                    total_w.Text = Convert.ToString(count1);
                    tr1.Text = Convert.ToString(r1);
                    tr2.Text = Convert.ToString(r2);
                    tr3.Text = Convert.ToString(r3);
                    tr4.Text = Convert.ToString(r4);


                }

            }
        }


        public void plot()
        {
            double ir1, ir2, ir3, ir4, ir5, ir6;
            double total = Convert.ToDouble(total_w.Text);

            ir1 = (r1 / total) * 100;
            ir2 = (r2 / total) * 100;
            ir3 = (r3 / total) * 100;
            ir4 = (r4 / total) * 100;
            

            ir1 = Math.Round(ir1, 2);
            ir2 = Math.Round(ir2, 2);
            ir3 = Math.Round(ir3, 2);
            ir4 = Math.Round(ir4, 2);
           

            pr1.Text = Convert.ToString(ir1);
            pr2.Text = Convert.ToString(ir2);
            pr3.Text = Convert.ToString(ir3);
            pr4.Text = Convert.ToString(ir4);
           

            Series series1 = new Series("Column");
            series1.ChartType = SeriesChartType.Column;
            series1.Points.AddXY(1, ir1);
            series1.Points.AddXY(2, ir2);
            series1.Points.AddXY(3, ir3);
            series1.Points.AddXY(4, ir4);
            
            Chart2.Series.Add(series1);
        }



    }
}