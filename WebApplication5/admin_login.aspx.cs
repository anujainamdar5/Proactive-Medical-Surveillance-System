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
using System.Data;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // history();
            upcomig.Visible = false;
            hist.Visible = false;

            string desig = (string)(Session["designation"]);

            if (desig == "Data Processor")
            {
                Button4.Visible = false;
            }


        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
        }

        protected void sas_Click(object sender, EventArgs e)
        {
            Response.Redirect("schedule.aspx");
        }



        protected void psd_Click(object sender, EventArgs e)
        {
            Response.Redirect("session_details.aspx");
            Table2.Visible = false;
        }

        protected void sns_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }






        public void history()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = new BsonDocument();
            var cursor = collection.FindAsync(filter);
            int count = 0;
            cursor.Wait();
            string[] sd = new string[50];
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {

                    count = cursor.Result.Current.Count<BsonDocument>();


                    TableHeaderRow thRow = new TableHeaderRow();

                    TableHeaderCell thcell1 = new TableHeaderCell();
                    thcell1.Text = "Factory Name";
                    thRow.Cells.Add(thcell1);

                    TableHeaderCell thcell2 = new TableHeaderCell();
                    thcell2.Text = "Area";
                    thRow.Cells.Add(thcell2);

                    TableHeaderCell thcell3 = new TableHeaderCell();
                    thcell3.Text = "Date";
                    thRow.Cells.Add(thcell3);


                    Table3.Rows.Add(thRow);

                    for (int i =count-1; i>=0; i--)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Fact_Name"].ToString();
                        trow.Cells.Add(cell1);
                        TableCell cell2 = new TableCell();
                        cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Area"].ToString();
                        trow.Cells.Add(cell2);
                        TableCell cell3 = new TableCell();
                        cell3.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Date"].ToString().Substring(0, 10);
                        trow.Cells.Add(cell3);


                        Table3.Rows.Add(trow);


                    }



                }


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            upcomig.Visible = true;
            upcomin();
        }

          public void upcomin()
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();
                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);
                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("schedule");
                Calendar1.SelectedDate = DateTime.Today.AddDays(1);
                string sd = (Calendar1.SelectedDate.ToString("yyyy-MM-dd"));
                var filter = Builders<BsonDocument>.Filter.Gt("Date", Calendar1.SelectedDate);
                // var filter = new BsonDocument() ;
                DateTime[] sc_dates = new DateTime[50];
             var cursor = collection.FindAsync(filter);
              //  int count = 0;
                cursor.Wait();
                using (cursor.Result)
                {
                   while (cursor.Result.MoveNextAsync().Result)
                    {

                       int count = cursor.Result.Current.Count<BsonDocument>();


                        TableHeaderRow thRow = new TableHeaderRow();

                        TableHeaderCell thcell1 = new TableHeaderCell();
                        thcell1.Text = "Factory Name";
                        thRow.Cells.Add(thcell1);

                        TableHeaderCell thcell2 = new TableHeaderCell();
                        thcell2.Text = "Area";
                        thRow.Cells.Add(thcell2);

                        TableHeaderCell thcell3 = new TableHeaderCell();
                        thcell3.Text = "Date";
                        thRow.Cells.Add(thcell3);


                        Table2.Rows.Add(thRow);

                        for (int i = 0; i < count; i++)
                        {
                            TableRow trow = new TableRow();

                            TableCell cell1 = new TableCell();
                            cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Fact_Name"].ToString();
                            trow.Cells.Add(cell1);
                            TableCell cell2 = new TableCell();
                            cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Area"].ToString();
                            trow.Cells.Add(cell2);
                            TableCell cell3 = new TableCell();
                        //     var bdate = cursor.Result.Current.ElementAt<BsonDocument>(i)["Date"].ToString;
                        // DateTime d = bdate.ToUniversalTime.;
                        //  sc_dates[i] = d;
                        //  Calendar1.SelectedDate = d;
                        //Calendar1.SelectedDayStyle.ForeColor =System.Drawing.Color.Aqua;
                        // cell3.Text = d.Date.ToString("yyyy-MM-dd");
                        cell3.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Date"].ToString();
                        trow.Cells.Add(cell3);


                            Table2.Rows.Add(trow);

                        }




                    }


                }

                /* int j=  sc_dates.Count();
                 for (int i = 0; i < j; i++)
                 {
                     Calendar1.SelectedDates[i] = sc_dates[i];
                     Calendar1.SelectedDayStyle.ForeColor = System.Drawing.Color.AliceBlue;

                 }
                DbHandler handler = new DbHandler();
                DataTable dt = new DataTable();
                dt = handler.dbQuery("Select Datum [Date], Tooltip, Color From KundCalendarSpecialDates");

            }*/



    }

        protected void Button2_Click(object sender, EventArgs e)
        {
            hist.Visible = true;
            history();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("team_edit.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
    }
    }
