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
    public partial class bulk_cross : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ent_pan.Visible = false;
            skin_pan.Visible = false;
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", sess[total - 1]);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    }
                }
            }
        }
    

    protected void ent_click_Click(object sender, EventArgs e)
        {
            ent_pan.Visible = true;

            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);
            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Date";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Incidence Rate";
            thRow.Cells.Add(thcell2);

            ent_tab.Rows.Add(thRow);
            





            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("g_exam");
            var collection_fact =db.GetCollection<BsonDocument>("fact_details");
            int[] ent = new int[total];
            int sum = 0;
            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();

                TableCell cell0 = new TableCell();
                cell0.Text =Convert.ToString(s+1);
                trow.Cells.Add(cell0);

                var filter_fact= Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell1 = new TableCell();
                            cell1.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell1);
                        }
                    }
                }



                var filter = Builders<BsonDocument>.Filter.Eq("session_code", sess[s]);
                var cursor = collection.FindAsync(filter);
                cursor.Wait();
                using (cursor.Result)
                {
                    {
                        while (cursor.Result.MoveNextAsync().Result)
                        {
                            sum= cursor.Result.Current.Count<BsonDocument>();
                        }
                    }
                }

                var filter1 = Builders<BsonDocument>.Filter.Eq("session_code", sess[s]) & Builders<BsonDocument>.Filter.Eq("ent", "Normal");
                var cursor1 = collection.FindAsync(filter1);
                cursor1.Wait();
                using (cursor1.Result)
                {
                    {
                        while (cursor1.Result.MoveNextAsync().Result)
                        {
                            ent[s] = ((cursor1.Result.Current.Count<BsonDocument>())/ sum)*100;
                            TableCell cell2 = new TableCell();
                            cell2.Text = Convert.ToString(ent[s]);
                            trow.Cells.Add(cell2);
                        }
                    }
                }

                ent_tab.Rows.Add(trow);
            }

            Series series1 = new Series("Column");
            series1.ChartType = SeriesChartType.Column;
           
            for (int s = 0; s < total; s++)
            {
                series1.Points.AddXY(s+1,ent[s]);
            }
            ent_chart.Series.Add(series1);

        }

        protected void ent_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            skin_pan.Visible = true;

            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);
            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Date";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Incidence Rate";
            thRow.Cells.Add(thcell2);

            skin_table.Rows.Add(thRow);
            
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("g_exam");
            var collection_fact = db.GetCollection<BsonDocument>("fact_details");
            int[] ent = new int[total];
            int sum = 0;
            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();

                TableCell cell0 = new TableCell();
                cell0.Text = Convert.ToString(s + 1);
                trow.Cells.Add(cell0);

                var filter_fact = Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell1 = new TableCell();
                            cell1.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell1);
                        }
                    }
                }



                var filter = Builders<BsonDocument>.Filter.Eq("session_code", sess[s]);
                var cursor = collection.FindAsync(filter);
                cursor.Wait();
                using (cursor.Result)
                {
                    {
                        while (cursor.Result.MoveNextAsync().Result)
                        {
                            sum = cursor.Result.Current.Count<BsonDocument>();
                        }
                    }
                }

                var filter1 = Builders<BsonDocument>.Filter.Eq("session_code", sess[s]) & Builders<BsonDocument>.Filter.Eq("skin", "Normal Texture");
                var cursor1 = collection.FindAsync(filter1);
                cursor1.Wait();
                using (cursor1.Result)
                {
                    {
                        while (cursor1.Result.MoveNextAsync().Result)
                        {
                            ent[s] = ((cursor1.Result.Current.Count<BsonDocument>()) / sum) * 100;
                            TableCell cell2 = new TableCell();
                            cell2.Text = Convert.ToString(ent[s]);
                            trow.Cells.Add(cell2);
                        }
                    }
                }

                skin_table.Rows.Add(trow);
            }

            Series series1 = new Series("Column");
            series1.ChartType = SeriesChartType.Column;

            for (int s = 0; s < total; s++)
            {
                series1.Points.AddXY(s + 1, ent[s]);
            }
            skin_chart.Series.Add(series1);





        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
    }
}