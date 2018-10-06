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
    public partial class systemic_exam : System.Web.UI.Page
    {
        int x;
        protected void Page_Load(object sender, EventArgs e)
        {

            home.Visible = false;
            token_no.Visible = true;
            /*if (x == 0)
                test_pan.Visible = false;
            else
            {
                test_pan.Visible = true;
                
            }*/
            

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
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }
            collection = db.GetCollection<BsonDocument>("systemic_examination");
            filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text);
            count.Text = collection.Find(filter).Count().ToString();



        }

        protected void adventatious_sounds0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void find_worker_Click(object sender, EventArgs e)
        {
            winfo();
            if (token_no.Text != "")
                test_pan.Visible = true;
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
                prompt.Alert("INVALID TOKEN NUMBER");
                token_no.Text = "";
            }
            else
            {
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

        protected void BREATH_SelectedIndexChanged(object sender, EventArgs e)
        {
            x = 1;
            if (BREATH.SelectedValue.Equals("Abnormal"))
                breathing.Visible = true;
        }

        protected void adv_lung_SelectedIndexChanged(object sender, EventArgs e)
        {
          x = 1;
            if (!(adv_lung.SelectedValue.Equals("None")))
            {
                adv_sound.Visible = true;
            }
        }

        protected void carnial_nervous_SelectedIndexChanged(object sender, EventArgs e)
        {
            x = 1;
            if (carnial_nervous.SelectedValue.Equals("Abnormal"))
                carnial_text.Visible = true;
            else
                carnial_text.Text = carnial_nervous.SelectedValue;
        }

        protected void sensory_SelectedIndexChanged(object sender, EventArgs e)
        {
            x = 1;
            if (sensory.SelectedValue.Equals("Abnormal"))
                sensory_text.Visible = true;
            else
                sensory_text.Text = sensory.SelectedValue;
        }

        protected void upload_Click(object sender, EventArgs e)
        {

            if (!Regex.IsMatch(spo2_other.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                prompt.Alert("Invalid SPO2");
            }
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("systemic_examination");
            var documnt = new BsonDocument
             {
                 { "Session_code",session_code.Text},
                 {"token_no",token_no.Text},
                 {"spo2",spo2_other.Text},
                 {"chest",chest.SelectedValue},
                 {"breathing",BREATH.SelectedValue},
                 {"breath_type",breathing.SelectedValue},
                 {"adv_lung",adv_lung.SelectedValue},
                 {"adv_sound",adv_sound.SelectedValue},
                 {"s1s2",s1s2.SelectedValue},
                 {"murmurs",murmurs.SelectedValue},
                 {"cardiac_rub",cardiac_rub.SelectedValue},
                 {"intelligence",intelligence.SelectedValue},
                 {"carnial_nervous",carnial_text.Text},
                 {"sensory",sensory_text.Text},
                 {"m_tone",m_tone.SelectedValue},
                 {"m_power",m_power.SelectedValue},
                 {"m_reflexes",m_reflexes.SelectedValue},
                 {"abdomen",abdomen.SelectedValue},
                 {" Umbilicus ",sensory0.SelectedValue},
                 {"liver1",liver1.SelectedValue},
                 {"liver2",liver2.SelectedValue},
                 {"spleen1",spleen1.SelectedValue},
                 {"spleen2",spleen2.SelectedValue},
                 {"advice",advice.Text}
            };
            collection.InsertOneAsync(documnt);
            prompt.form_status("Entry saved successfully.");
            token_no.Text = "";
            test_pan.Visible = false;
            w_age.Text = "";
            w_name.Text = "";
            w_sex.Text = "";
            spo2.SelectedIndex = 0;
            spo2_other.Text = "";
            chest.SelectedIndex = 0;
            breathing.SelectedIndex = 0;
            BREATH.SelectedIndex = 0;
            adv_lung.SelectedIndex = 0;
            s1s2.SelectedIndex = 0;
            murmurs.SelectedIndex = 0;
            cardiac_rub.SelectedIndex = 0;
            intelligence.SelectedIndex = 0;
            carnial_nervous.SelectedIndex = 0;
            carnial_text.Text = "";
            sensory.SelectedIndex = 0;
            sensory_text.Text = "";
            m_power.SelectedIndex = 0;
            m_reflexes.SelectedIndex = 0;
            m_tone.SelectedIndex = 0;
            abdomen.SelectedIndex = 0;
            sensory0.SelectedIndex = 0;
            liver1.SelectedIndex = 0;
            liver2.SelectedIndex= 0;
            spleen1.SelectedIndex = 0;
            spleen2.SelectedIndex = 0;
            advice.Text = "";
            breathing.Visible = false;
            adv_sound.Visible = false;
            carnial_text.Visible = false;
            sensory_text.Visible = false;
            spo2_other.Visible = false;
            x = 1;
        }

        protected void spo2_SelectedIndexChanged(object sender, EventArgs e)
        {
           x = 1;
            if (spo2.SelectedValue.Equals("Other"))
                spo2_other.Visible = true;
            else
                spo2_other.Text = spo2.SelectedValue;
        }

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }

        protected void spo2_other_TextChanged(object sender, EventArgs e)
        {

        }

        protected void chest_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void breathing_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void adv_sound_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void s1s2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void murmurs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cardiac_rub_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void intelligence_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void carnial_text_TextChanged(object sender, EventArgs e)
        {

        }

        protected void sensory_text_TextChanged(object sender, EventArgs e)
        {

        }

        protected void m_tone_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void m_power_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void m_reflexes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void abdomen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void sensory0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void liver1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void liver2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void spleen1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void spleen2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void advice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}