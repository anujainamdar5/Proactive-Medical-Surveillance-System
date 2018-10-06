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
    public partial class pathalogy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            home.Visible = false;
            token_no.Visible = true;
            test_panel.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                home.Visible = true;
            }
            session_code.Text = (string)(Session["Session_code"]);
            //Session["Session_code"] = Label5.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    fact_area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }
            collection = db.GetCollection<BsonDocument>("pathology");
            filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            count.Text = collection.Find(filter).Count().ToString();


        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("admin_login.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rbc_TextChanged(object sender, EventArgs e)
{

        }

        protected void tlc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dlc_n_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dlc_l_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dlc_e_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dlc_m_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dlc_b_TextChanged(object sender, EventArgs e)
        {

        }

        protected void platelets_TextChanged(object sender, EventArgs e)
        {

        }

        protected void esr_TextChanged(object sender, EventArgs e)
        {

        }

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void find_worker_Click(object sender, EventArgs e)
        {
            winfo();
            if(token_no.Text!="")
            test_panel.Visible = true;

        }

        public void winfo()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
            if (collection.Find(filter).Count().ToString().Equals("0"))
                {
                prompt.Alert("Invalid token_no");
                token_no.Text = "";
            }
            else{
                var cursor = collection.FindAsync(filter);
                cursor.Wait();
                using (cursor.Result)
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        w_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                        w_age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                        w_sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();
                    }
                }
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void advice_TextChanged(object sender, EventArgs e)
        {

        }

        protected void upload_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(hb.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid Hb");
            }
            else if (!Regex.IsMatch(rbc.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid RBC");
            }
            else if (!Regex.IsMatch(tlc.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid TLC");
            }
            else if (!Regex.IsMatch(dlc_n.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid DLC - N");
            }
            else if (!Regex.IsMatch(dlc_e.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid DLC - E");
            }
            else if (!Regex.IsMatch(dlc_l.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid DLC - L");
            }
            else if (!Regex.IsMatch(dlc_m.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid DLC - M");
            }
            else if (!Regex.IsMatch(dlc_b.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid DLC - B");
            }
            else if (!Regex.IsMatch(platelets.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid Platelets");
            }
            else if (!Regex.IsMatch(esr.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid ESR");
            }

            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();
                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);
                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("pathology");
                var documnt = new BsonDocument
             {
                 { "Session_code",session_code.Text},
                 {"token_no",token_no.Text},
                 { "HB",hb.Text},
                 {"RBC",rbc.Text},
                 {"tlc",tlc.Text},
                 { "DLC_N", dlc_n.Text},
                 { "DLC_M",dlc_m.Text},
                 { "DLC_L",dlc_l.Text},
                 { "DLC_E",dlc_e.Text},
                 { "DLC_B",dlc_b.Text},
                 {"urine_sugar",RadioButtonList2.SelectedValue},
                 {"urine_protein",RadioButtonList3.SelectedValue},
                 {"urine_ph", RadioButtonList4.SelectedValue},
                 { "advice", advice.Text}
            };
                collection.InsertOneAsync(documnt);
                prompt.form_status("Entry saved successfully.");
                token_no.Text = "";
                hb.Text = "";
                rbc.Text = "";
                tlc.Text = "";
                dlc_n.Text = "";
                dlc_l.Text = "";
                dlc_e.Text = "";
                dlc_m.Text = "";
                dlc_b.Text = "";
                platelets.Text = "";
                esr.Text = "";
                RadioButtonList2.SelectedValue = "Absent";
                RadioButtonList3.SelectedValue = "Absent";
                RadioButtonList4.SelectedValue = "Acidic";
                advice.Text = "";
                test_panel.Visible = false;


            }
        }
    }

   
    }
