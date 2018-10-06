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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;

            Label9.Visible = false;

            home.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                home.Visible = true;

            }

            Label1.Text = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    Label7.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    Label8.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }

                winfo();
            }
        }

             public void winfo()
        {

            string token = (string)(Session["Token_no"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token);
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

        protected void pulse_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(pulse.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label2.Text = "Please check the value entered";
            }
            else if (pulse.Text.Equals(""))
            {
                Label2.Text = "Please enter value";
            }

            else if (!Regex.IsMatch(bp.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label3.Text = "Please check the value entered";
            }
            else if (bp.Text.Equals(""))
            {
                Label3.Text = "Please enter value";
            }

            else if (!Regex.IsMatch(rp_rate.Text, @"^\d{1,3}(?:\.\d{1,2})?$"))
            {
                Label4.Text = "Please check the value entered";
            }
            else if (rp_rate.Text.Equals(""))
                Label4.Text = "Please enter value";

            else if (DropDownList1.SelectedValue.Equals("--select--"))
            {
                Label5.Text = "Please select value";
            }

            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("general_exam");
                string token = (string)(Session["Token_no"]);
                var documnt = new BsonDocument
        {
            {"token_no", token },
            {"pulse", pulse.Text },
            {"rp_rate", rp_rate.Text },
            {"skin",DropDownList1.SelectedValue },
            {"cynosis",RadioButtonList1.SelectedValue },
            {"jaundice",RadioButtonList2.SelectedValue },
            {"ent",ent.SelectedValue },
            { "ent_text", entt.Text },
            {"mouthcavity",mouth_cavity.SelectedValue },
            { "mouthcavity_text", mct.Text},
            {"neck",neck.SelectedValue },
            {"gait",gait.SelectedValue },
            {"tremors",tremors.SelectedValue },
            {"session_code",Label1.Text}
         };
                Label9.Text = "entry saved successfully";
                Label9.Visible = true;

            }
        }

        protected void bp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rp_rate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ent_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ent.SelectedValue.Equals("Abnormal"))
                entt.Visible = true;
            else
            {
                ent.SelectedValue = "Normal";
                entt.Text = "";
                entt.Visible = false;
            }
        }

        protected void entt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void mouth_cavity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mouth_cavity.SelectedValue.Equals("Abnormal"))
                mct.Visible = true;
            else
            {
                mouth_cavity.SelectedValue = "Normal";
                mct.Text = "";
                mct.Visible = false;
            }
        }

        protected void neck_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (neck.SelectedValue.Equals("Abnormal"))
                TextBox1.Visible = true;
            else
            {
                neck.SelectedValue = "Normal";
                TextBox1.Text = "";
                TextBox1.Visible = false;
            }
        }

        protected void mct_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gait_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gait.SelectedValue.Equals("Abnormal"))
                TextBox3.Visible = true;
            else
            {
                gait.SelectedValue = "Normal";
                TextBox3.Text = "";
                TextBox3.Visible = false;
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tremors_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tremors.SelectedValue.Equals("Present"))
                TextBox2.Visible = true;
            else
            {
                tremors.SelectedValue = "Nil";
                TextBox2.Text = "";
                TextBox2.Visible = false;

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("tests_page.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

    }

