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
    public partial class Single_report : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int x = count_documents();
            if (x > 0)
            {
                fact_info();
                winfo();
                body_measurements();
                g_exam();
                vt();
                advice1();
            }

            else
            {
                Label1.Text = "Invalid token number";
                Label1.Visible = true;
            }
        }




        public void advice1()
        {
            string session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("advice");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        advice.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Advice"].ToString();
                        fitness.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fitness"].ToString();
                    }
                }

            }
        }




        public int count_documents()
        {
            string session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
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
            string session_code = (string)(Session["Session_code"]);

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString().TrimEnd();
                        Fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    }
                }

            }



        }

        public void winfo()
        {
            string session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        token.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["token_no"].ToString();
                        name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                        age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                        sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();
                    }
                }

            }
        }

        public void body_measurements()
        {
            string session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("body_measure");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        height.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["height"].ToString();
                        weight.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["weight"].ToString();
                        chest.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["chest"].ToString();
                        abdomen.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["abdomen"].ToString();
                        bmi.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["BMI"].ToString();
                        wcr.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["WRC"].ToString();
                    }
                }

            }

            //bmi deduction
            Double b = Convert.ToDouble(bmi.Text);
            if (b < 18.5)
            {
                bmi_d.Text = "Underweight";
                bmi_d.ForeColor = System.Drawing.Color.Red;

            }
            else if (b > 18.5 && b < 24.9)
            {
                bmi_d.Text = "Normal";
            }
            else if (b > 25.0 && b < 29.9)
            {
                bmi_d.Text = "Overweight";
                bmi_d.ForeColor = System.Drawing.Color.Red;
            }
            else if (b > 30.0)
            {
                bmi_d.Text = "Obese";
                bmi_d.ForeColor = System.Drawing.Color.Red;
            }

            //waist-chest ratio
            double w = Convert.ToDouble(wcr.Text);
            if (sex.Text.Equals("Female") & w > 0.8)
            {
                wcr_satus.Text = "<0.8";
                Label12.Text = "Abnormal";
                Label12.ForeColor = System.Drawing.Color.Red;
            }
             else if (sex.Text.Equals("Male") & w > 0.95)
            {
                wcr_satus.Text = "<0.8";
                Label12.Text = "Abnormal";
                Label12.ForeColor = System.Drawing.Color.Red;
            }
            else
                Label12.Text = "Normal";
        }

        public void g_exam()
        {
            string session_code = (string)(Session["Session_code"]);
            string ent_text = "";
            string mct_text = "";
            string neck_text = "";
            string gait_text = "";
            string tremor_text = "";
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("g_exam");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();



            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        pulse.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["pulse"].ToString();
                        bp.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["bp"].ToString();
                        resp_rate.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["rp_rate"].ToString();
                        skin.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["skin"].ToString();
                        cynosis.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["cynosis"].ToString();
                        jaundice.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["jaundice"].ToString();
                        ent.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["ent"].ToString();
                        ent_text = cursor.Result.Current.ElementAt<BsonDocument>(0)["ent_text"].ToString();
                        mouth_cavity.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["mouthcavity"].ToString();
                        mct_text = cursor.Result.Current.ElementAt<BsonDocument>(0)["mouthcavity_text"].ToString();
                        neck.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["neck"].ToString();

                        neck_text = cursor.Result.Current.ElementAt<BsonDocument>(0)["neck_text"].ToString();
                        gait.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["gait"].ToString();

                        gait_text = cursor.Result.Current.ElementAt<BsonDocument>(0)["gait_text"].ToString();
                        tremors.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["tremors"].ToString();
                        tremor_text = cursor.Result.Current.ElementAt<BsonDocument>(0)["tremors_text"].ToString();
                    }
                }

                Int16 p = Convert.ToInt16(pulse.Text);
                if (p > 80 || p < 60)
                {
                    pulse_d.Text = "Abnormal";
                    pulse_d.ForeColor = System.Drawing.Color.Red;
                }

                Int16 b = Convert.ToInt16(bp.Text);
                if (b > 140)
                {
                    bp_d.Text = "Abnormal";
                    bp_d.ForeColor = System.Drawing.Color.Red;
                }

                Int16 r = Convert.ToInt16(resp_rate.Text);
                if (r < 12 || r > 18)
                {
                    Label11.Text = "Abnormal";
                    Label11.ForeColor = System.Drawing.Color.Red;
                }
                else
                    Label11.Text = "Normal";


                //  Label13.Text = cynosis.Text;
                if (cynosis.Text.Equals("Yes"))
                {
                    Label13.Text = "Abnormal";
                    Label13.ForeColor = System.Drawing.Color.Red;
                }
                else
                    Label13.Text = "Normal";

                //  Label14.Text = jaundice.Text;

                if (jaundice.Text.Equals("Yes"))
                {
                    Label14.Text = "Abnormal";
                    Label14.ForeColor = System.Drawing.Color.Red;
                }
                else
                    Label14.Text = "Normal";


                if (ent.Text.Equals("Abnormal"))
                {
                    Label15.Text = "Abnormal";
                    Label15.ForeColor = System.Drawing.Color.Red;
                    ent.Text = ent_text;
                }
                else
                    Label15.Text = "Normal";

                if (mouth_cavity.Text.Equals("Abnormal"))
                {
                    Label16.Text = "Abnormal";
                    Label16.ForeColor = System.Drawing.Color.Red;
                    mouth_cavity.Text = mct_text;
                }
                else
                    Label16.Text = "Normal";

                if (neck.Text.Equals("Abnormal"))
                {
                    Label17.Text = "Abnormal";
                    Label17.ForeColor = System.Drawing.Color.Red;
                    neck.Text = neck_text;
                }
                else
                    Label17.Text = "Normal";

                if (gait.Text.Equals("Abnormal"))
                {
                    Label18.Text = "Abnormal";
                    Label18.ForeColor = System.Drawing.Color.Red;
                    gait.Text = gait_text;
                }
                else
                    Label18.Text = "Normal";

                if (tremors.Text.Equals("Present"))
                {
                    Label19.Text = "Abnormal";
                    Label19.ForeColor = System.Drawing.Color.Red;
                    tremors.Text = tremor_text;
                }
                else
                    Label19.Text = "Normal";


            }
        }


        public void vt()
        {

            string session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("vision_test");
            var filter = Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text) & Builders<BsonDocument>.Filter.Eq("Session_code", session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        dv.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["distant_left"].ToString();
                        dv0.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["distant_right"].ToString();

                        nv.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["near_left"].ToString();
                        nv0.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["near_right"].ToString();

                        cv.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["color"].ToString();

                    }
                }

            }

            if (!dv.Text.Equals("6") || !dv0.Text.Equals("6"))
            {
                Label20.Text = "Abnormal";
                Label20.ForeColor = System.Drawing.Color.Red;
            }
            else
                Label20.Text = "Normal";

            if (!nv.Text.Equals("6") || !nv0.Text.Equals("6"))
            {
                Label21.Text = "Abnormal";
                Label21.ForeColor = System.Drawing.Color.Red;
            }
            else
                Label21.Text = "Normal";

            if (!dv.Text.Equals("3") || dv0.Text.Equals("6"))
            {
                Label22.Text = "Abnormal";
                Label22.ForeColor = System.Drawing.Color.Red;
            }
            else
                Label22.Text = "Normal";

        }

    }
}