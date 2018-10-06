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
    public partial class single_cross : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            emp_list.Visible = false;
            token.Visible = false;
            reps.Visible = false;
        }

        protected void empl_Click(object sender, EventArgs e)
        {
            emp_list.Visible = true;
            string[] sess = (string[])(Session["Session_array"]);
            // int total = sess.GetLength(sess[]);
            int total = (int)(Session["total"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");

            var collection1 = db.GetCollection<BsonDocument>("fact_details");
            var filter1 = Builders<BsonDocument>.Filter.Eq("Session_code", sess[total-1]);
            var cursor1 = collection1.FindAsync(filter1);
            cursor1.Wait();
            using (cursor1.Result)
            {

                while (cursor1.Result.MoveNextAsync().Result)
                {

                      fact_name.Text = cursor1.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                     area.Text = cursor1.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                   // fact_name.Text = Convert.ToString(total);
                }
            }



            var collection = db.GetCollection<BsonDocument>("worker_info");


            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", sess[total - 1]);

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

        protected void Button7_Click(object sender, EventArgs e)
        {
            token.Visible = true;
        }

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }

        protected void report_Click(object sender, EventArgs e)
        {
            int x = count_documents();
            if (x > 0)
            {
                reps.Visible = true;
                token.Visible = true;
                fact_info();
                winfo();
                 body_measurements();
                g_exam();
                 vt();
               advice();

            }

            else
            {
                Label1.Text = "Invalid token number";
                Label1.Visible = true;
            }
        }


        public int count_documents()
        {

            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", sess[total - 1]);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            int x = 0;
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    x = cursor.Result.Current.Count<BsonDocument>();

                }

            }
            return x;

        }


        public void fact_info()
        {

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
                        //date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString().TrimEnd();
                        Fact_name0.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        area0.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    }
                }

            }



        }


        public void winfo()
        {
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", sess[total - 1]);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        token0.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["token_no"].ToString();
                        name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                        age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                        sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();
                    }
                }

            }
        }


        public void advice()
        {
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);

            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Advice";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Fitness";
            thRow.Cells.Add(thcell2);

            adv.Rows.Add(thRow);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection_ad = db.GetCollection<BsonDocument>("advice");
            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();
                var collection_fact = db.GetCollection<BsonDocument>("fact_details");
                var filter_fact = Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                cursor_fact.Wait();
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell0 = new TableCell();
                            cell0.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell0);

                        }
                    }
                }

                var filter_ad = (Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text)) & (Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]));
                var cursor_ad = collection_ad.FindAsync(filter_ad);
                cursor_ad.Wait();


                using (cursor_ad.Result)
                {
                    {
                        while (cursor_ad.Result.MoveNextAsync().Result)
                        {

                            if (cursor_ad.Result.Current.Count<BsonDocument>() == 0)
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = "-";
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = "-";
                                trow.Cells.Add(cell2);
                                s++;
                            }
                            else
                            {

                                TableCell cell1 = new TableCell();
                                cell1.Text = cursor_ad.Result.Current.ElementAt<BsonDocument>(0)["Advice"].ToString();
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = cursor_ad.Result.Current.ElementAt<BsonDocument>(0)["Fitness"].ToString();
                                trow.Cells.Add(cell2);

                            }
                        }
                    }
                }

                adv.Rows.Add(trow);
            }
        }


        public void vt()
        {
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);
            
            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Distant(left)";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Distant(right)";
            thRow.Cells.Add(thcell2);

            TableHeaderCell thcell3 = new TableHeaderCell();
            thcell3.Text = "Near(left)";
            thRow.Cells.Add(thcell3);

            TableHeaderCell thcell4 = new TableHeaderCell();
            thcell4.Text = "Near(right)";
            thRow.Cells.Add(thcell4);

            TableHeaderCell thcell5 = new TableHeaderCell();
            thcell5.Text = "Color";
            thRow.Cells.Add(thcell5);
            
            vision.Rows.Add(thRow);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection_bm = db.GetCollection<BsonDocument>("vision_test");
            var collection_fact = db.GetCollection<BsonDocument>("fact_details");

            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();
                var filter_fact = Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                cursor_fact.Wait();
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell0 = new TableCell();
                            cell0.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell0);

                        }
                    }
                }


                var filter_vt = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_vt = collection_bm.FindAsync(filter_vt);
                cursor_vt.Wait();
                using (cursor_vt.Result)
                {
                    {
                        while (cursor_vt.Result.MoveNextAsync().Result)
                        {

                            if (cursor_vt.Result.Current.Count<BsonDocument>() == 0)
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = "-";
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = "-";
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = "-";
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = "-";
                                trow.Cells.Add(cell4);

                                TableCell cell5 = new TableCell();
                                cell5.Text = "-";
                                trow.Cells.Add(cell5);

                                s++;
                            }
                            else
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = cursor_vt.Result.Current.ElementAt<BsonDocument>(0)["distant_left"].ToString();
                                if (cell1.Text.Equals("6"))
                                    cell1.Text = "Normal";
                                else
                                    cell1.Text = "Abnormal";
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = cursor_vt.Result.Current.ElementAt<BsonDocument>(0)["distant_right"].ToString();
                                if (cell2.Text.Equals("6"))
                                    cell2.Text = "Normal";
                                else
                                    cell2.Text = "Abnormal";
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = cursor_vt.Result.Current.ElementAt<BsonDocument>(0)["near_left"].ToString();
                                if (cell3.Text.Equals("6"))
                                    cell3.Text = "Normal";
                                else
                                    cell3.Text = "Abnormal";
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = cursor_vt.Result.Current.ElementAt<BsonDocument>(0)["near_right"].ToString();
                                if (cell4.Text.Equals("6"))
                                    cell4.Text = "Normal";
                                else
                                    cell4.Text = "Abnormal";
                                trow.Cells.Add(cell4);


                                TableCell cell5 = new TableCell();
                                cell5.Text = cursor_vt.Result.Current.ElementAt<BsonDocument>(0)["color"].ToString();
                                if (cell5.Text.Equals("3"))
                                    cell5.Text = "Normal";
                                else
                                    cell5.Text = "Abnormal";
                                trow.Cells.Add(cell5);


                            }
                        }
                    }
                    vision.Rows.Add(trow);
                }
            }
        }



    public void body_measurements()
        {
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);


            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Height";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Weight";
            thRow.Cells.Add(thcell2);

            TableHeaderCell thcell3 = new TableHeaderCell();
            thcell3.Text = "Chest";
            thRow.Cells.Add(thcell3);

            TableHeaderCell thcell4 = new TableHeaderCell();
            thcell4.Text = "Abdomen";
            thRow.Cells.Add(thcell4);

            TableHeaderCell thcell5 = new TableHeaderCell();
            thcell5.Text = "Body Mass Index";
            thRow.Cells.Add(thcell5);

            TableHeaderCell thcell6 = new TableHeaderCell();
            thcell6.Text = "Waist Chest Ratio";
            thRow.Cells.Add(thcell6);

            bm.Rows.Add(thRow);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection_bm = db.GetCollection<BsonDocument>("body_measure");
            var collection_fact = db.GetCollection<BsonDocument>("fact_details");

            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();
                var filter_fact = Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                cursor_fact.Wait();
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell0 = new TableCell();
                            cell0.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell0);

                        }
                    }
                }


                var filter_bm = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_bm = collection_bm.FindAsync(filter_bm);
                cursor_bm.Wait();
                using (cursor_bm.Result)
                {
                    {
                        while (cursor_bm.Result.MoveNextAsync().Result)
                        {

                            if (cursor_bm.Result.Current.Count<BsonDocument>() == 0)
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = "-";
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = "-";
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = "-";
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = "-";
                                trow.Cells.Add(cell4);

                                TableCell cell5 = new TableCell();
                                cell5.Text = "-";
                                trow.Cells.Add(cell5);

                                TableCell cell6 = new TableCell();
                                cell6.Text = "-";
                                trow.Cells.Add(cell6);

                                s++;
                            }
                            else
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["height"].ToString();
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["weight"].ToString();
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["chest"].ToString();
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["abdomen"].ToString();
                                trow.Cells.Add(cell4);

                                TableCell cell5 = new TableCell();
                                cell5.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["BMI"].ToString();
                                trow.Cells.Add(cell5);

                                TableCell cell6 = new TableCell();
                                cell6.Text = cursor_bm.Result.Current.ElementAt<BsonDocument>(0)["WRC"].ToString();
                                trow.Cells.Add(cell6);

                            }
                        }
                    }
                }

                bm.Rows.Add(trow);
            }
        }
        

        public void g_exam()
        {
            string[] sess = (string[])(Session["Session_array"]);
            int total = (int)(Session["total"]);


            TableHeaderRow thRow = new TableHeaderRow();

            TableHeaderCell thcell0 = new TableHeaderCell();
            thcell0.Text = "Date";
            thRow.Cells.Add(thcell0);

            TableHeaderCell thcell1 = new TableHeaderCell();
            thcell1.Text = "Pulse";
            thRow.Cells.Add(thcell1);

            TableHeaderCell thcell2 = new TableHeaderCell();
            thcell2.Text = "Blood Pressure";
            thRow.Cells.Add(thcell2);

            TableHeaderCell thcell3 = new TableHeaderCell();
            thcell3.Text = "Respiratory Rate";
            thRow.Cells.Add(thcell3);

            TableHeaderCell thcell4 = new TableHeaderCell();
            thcell4.Text = "Skin";
            thRow.Cells.Add(thcell4);

            TableHeaderCell thcell5 = new TableHeaderCell();
            thcell5.Text = "Cynosis";
            thRow.Cells.Add(thcell5);

            TableHeaderCell thcell6 = new TableHeaderCell();
            thcell6.Text = "Jaundice";
            thRow.Cells.Add(thcell6);

            TableHeaderCell thcell7 = new TableHeaderCell();
            thcell7.Text = "ENT";
            thRow.Cells.Add(thcell7);

            TableHeaderCell thcell8 = new TableHeaderCell();
            thcell8.Text = "Mouth Cavity";
            thRow.Cells.Add(thcell8);

            TableHeaderCell thcell9 = new TableHeaderCell();
            thcell9.Text = "Neck";
            thRow.Cells.Add(thcell9);

            TableHeaderCell thcell10 = new TableHeaderCell();
            thcell10.Text = "Gait";
            thRow.Cells.Add(thcell10);

            TableHeaderCell thcell11 = new TableHeaderCell();
            thcell11.Text = "Tremors";
            thRow.Cells.Add(thcell11);

            ge.Rows.Add(thRow);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection_ge = db.GetCollection<BsonDocument>("g_exam");
            var collection_fact = db.GetCollection<BsonDocument>("fact_details");

            for (int s = 0; s < total; s++)
            {
                TableRow trow = new TableRow();
                var filter_fact = Builders<BsonDocument>.Filter.Eq("Session_code", sess[s]);
                var cursor_fact = collection_fact.FindAsync(filter_fact);
                cursor_fact.Wait();
                using (cursor_fact.Result)
                {
                    {
                        while (cursor_fact.Result.MoveNextAsync().Result)
                        {
                            TableCell cell0 = new TableCell();
                            cell0.Text = cursor_fact.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                            trow.Cells.Add(cell0);

                        }
                    }
                }


                var filter_ge = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("session_code", sess[s]);
                var cursor_ge = collection_ge.FindAsync(filter_ge);
                cursor_ge.Wait();
                using (cursor_ge.Result)
                {
                    {
                        while (cursor_ge.Result.MoveNextAsync().Result)
                        {

                            if (cursor_ge.Result.Current.Count<BsonDocument>() == 0)
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = "-";
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = "-";
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = "-";
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = "-";
                                trow.Cells.Add(cell4);

                                TableCell cell5 = new TableCell();
                                cell5.Text = "-";
                                trow.Cells.Add(cell5);

                                TableCell cell6 = new TableCell();
                                cell6.Text = "-";
                                trow.Cells.Add(cell6);

                                TableCell cell7 = new TableCell();
                                cell7.Text = "-";
                                trow.Cells.Add(cell7);

                                TableCell cell8 = new TableCell();
                                cell8.Text = "-";
                                trow.Cells.Add(cell8);

                                TableCell cell9 = new TableCell();
                                cell9.Text = "-";
                                trow.Cells.Add(cell9);

                                TableCell cell10 = new TableCell();
                                cell10.Text = "-";
                                trow.Cells.Add(cell10);

                                TableCell cell11 = new TableCell();
                                cell11.Text = "-";
                                trow.Cells.Add(cell11);

                             }
                            else
                            {
                                TableCell cell1 = new TableCell();
                                cell1.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["pulse"].ToString();
                                trow.Cells.Add(cell1);

                                TableCell cell2 = new TableCell();
                                cell2.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["bp"].ToString();
                                trow.Cells.Add(cell2);

                                TableCell cell3 = new TableCell();
                                cell3.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["rp_rate"].ToString();
                                trow.Cells.Add(cell3);

                                TableCell cell4 = new TableCell();
                                cell4.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["skin"].ToString();
                                trow.Cells.Add(cell4);

                                TableCell cell5 = new TableCell();
                                cell5.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["cynosis"].ToString();
                                trow.Cells.Add(cell5);

                                TableCell cell6 = new TableCell();
                                cell6.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["jaundice"].ToString();
                                trow.Cells.Add(cell6);

                                TableCell cell7 = new TableCell();
                                cell7.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["ent"].ToString();
                                if(cell7.Text.Equals("Abnormal"))
                                cell7.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["ent_text"].ToString();
                                trow.Cells.Add(cell7);

                                TableCell cell8 = new TableCell();
                                cell8.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["mouthcavity"].ToString();
                                if (cell8.Text.Equals("Abnormal"))
                                cell8.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["mouthcavity_text"].ToString();
                                trow.Cells.Add(cell8);

                                TableCell cell9 = new TableCell();
                                cell9.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["neck"].ToString();
                                if (cell9.Text.Equals("Abnormal"))
                                    cell9.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["neck_text"].ToString();
                                trow.Cells.Add(cell9);

                                TableCell cell10 = new TableCell();
                                cell10.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["gait"].ToString();
                                if (cell10.Text.Equals("Abnormal"))
                                    cell10.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["gait_text"].ToString();
                                trow.Cells.Add(cell10);

                                TableCell cell11 = new TableCell();
                                cell11.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["tremors"].ToString();
                                if (cell11.Text.Equals("Abnormal"))
                                    cell11.Text = cursor_ge.Result.Current.ElementAt<BsonDocument>(0)["tremors_text"].ToString();
                                trow.Cells.Add(cell11);



                            }
                        }
                    }
                }

                ge.Rows.Add(trow);
            }
        }

    }
}