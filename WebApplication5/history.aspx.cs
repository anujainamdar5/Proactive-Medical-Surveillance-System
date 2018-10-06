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
    public partial class history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            test_pan.Visible = false;
            home.Visible = false;
            string designation = (string)(Session["designation"]);
            if ((designation == "Chief Medical Officer") || (designation == "Data Processor"))
            {
                home.Visible = true;

            }

            Label1.Text = (string)(Session["Session_code"]);
            Session["Session_code"] = Label1.Text;
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
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                }
            }

            collection = db.GetCollection<BsonDocument>("history");
            filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text);
            total_count.Text = collection.Find(filter).Count().ToString();
        }

        protected void save_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ws.aspx");
        }

        protected void find_worker_Click(object sender, EventArgs e)
        {
            winfo();
            if (token_no.Text != "")
            {
                test_pan.Visible = true;
                if (check_record_exixtance() == 1)
                {
                    save_new.Visible = false;
                    update.Visible = true;
                    delete.Visible = true;
                }
                else
                {
                    save_new.Visible = true;
                    update.Visible = false;
                    delete.Visible = false;
                }
            }
        }

        public void winfo()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
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

        protected void token_no_TextChanged(object sender, EventArgs e)
        {

        }

        protected void trade_years_TextChanged(object sender, EventArgs e)
        {

        }

        protected void fever_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void acidity_digestion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void allergy_reaction_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void eye_problem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void eye_problem0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void blood_group_TextChanged(object sender, EventArgs e)
        {

        }

        protected void save_new_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(trade_years.Text, @"^[0-9]{2}$"))
            {
                prompt.Alert("Invalid value of years in current trade.");
            }
            else if (!Regex.IsMatch(blood_group.Text, @"^(A|B|AB|O)[+-]$"))
            {
                prompt.Alert("Invalid blood group");
            }
            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();

                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);

                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("history");

                var documnt = new BsonDocument
            {
                {"token_no",token_no.Text},
                { "Session_code",Label1.Text},
                { "trade_years",trade_years.Text},
                { "fever",fever.SelectedValue},
                { "acidity_digestion",acidity_digestion.SelectedValue},
                { "allergy_reaction",allergy_reaction.SelectedValue},
                { "eye_problem",eye_problem.SelectedValue},
                { "ear_disease",ear_disease.SelectedValue},
                { "hearing_problem",hearing_problem.SelectedValue},
                { "TB",tb.SelectedValue},
                { "breathlessness",breathlessness.SelectedValue},
                { "respiratoy",respiratory.SelectedValue},
                { "bp_heart_disease",bp_heart_disease.SelectedValue},
                { "diabetes",diabetes.SelectedValue},
                { "jaundice",jaundice.SelectedValue},
                { "dental",dental.SelectedValue},
                { "walking_handwriting",walking_handwriting.SelectedValue},
                { "skin_problems",skin_problem.SelectedValue},
                { "urinary_complaints",urinary_complaints.SelectedValue},
                { "blood_group",blood_group.Text},
                { "hernia",hernia.SelectedValue},
                { "mental_illness",mental_illness.SelectedValue},
                { "fits",fits.SelectedValue},
                { "joint_muscle_pain",joint_muscle_pain.SelectedValue},
                { "work_performance",work_performance.SelectedValue},
                { "cancer",cancer.SelectedValue},
                { "abnormal_blood_tests",abnormal_blood_tests.SelectedValue},
                { "addiction",addiction.SelectedValue},
                { "complaints",complaints.SelectedValue},
                { "oral_nasal_ulcers",oral.SelectedValue},
           };
                collection.InsertOneAsync(documnt);

                prompt.form_status("Entry saved successfully.");

                clear_fields();
            }
        }

        public void clear_fields()
        {
            token_no.Text = "";
            trade_years.Text = "";
            fever.SelectedIndex = 0;
            acidity_digestion.SelectedIndex = 0;
            allergy_reaction.SelectedIndex = 0;
            eye_problem.SelectedIndex = 0;
            ear_disease.SelectedIndex = 0;
            hearing_problem.SelectedIndex = 0;
            tb.SelectedIndex = 0;
            breathlessness.SelectedIndex = 0;
            respiratory.SelectedIndex = 0;
            bp_heart_disease.SelectedIndex = 0;
            diabetes.SelectedIndex = 0;
            jaundice.SelectedIndex = 0;
            dental.SelectedIndex = 0;
            walking_handwriting.SelectedIndex = 0;
            skin_problem.SelectedIndex = 0;
            urinary_complaints.SelectedIndex = 0;
            blood_group.Text = "";
            hernia.SelectedIndex = 0;
            mental_illness.SelectedIndex = 0;
            fits.SelectedIndex = 0;
            joint_muscle_pain.SelectedIndex = 0;
            work_performance.SelectedIndex = 0;
            cancer.SelectedIndex = 0;
            abnormal_blood_tests.SelectedIndex = 0;
            addiction.SelectedIndex = 0;
            complaints.SelectedIndex = 0;
            oral.SelectedIndex = 0;
            test_pan.Visible = false;
        }

        public int check_record_exixtance()
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("history");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
            if (collection.Find(filter).Count() > 0)
            {
                var cursor = collection.FindAsync(filter);
                cursor.Wait();
                using (cursor.Result)
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        trade_years.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["trade_years"].ToString();
                        fever.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["fever"].ToString();
                        acidity_digestion.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["acidity_digestion"].ToString();
                        allergy_reaction.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["allergy_reaction"].ToString();
                        eye_problem.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["eye_problem"].ToString();
                        ear_disease.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["ear_disease"].ToString();
                        hearing_problem.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["hearing_problem"].ToString();
                        tb.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["TB"].ToString();
                        breathlessness.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["breathlessness"].ToString();
                        respiratory.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["respiratoy"].ToString();
                        bp_heart_disease.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["bp_heart_disease"].ToString();
                        diabetes.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["diabetes"].ToString();
                        jaundice.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["jaundice"].ToString();
                        dental.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["dental"].ToString();
                        walking_handwriting.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["walking_handwriting"].ToString();
                        skin_problem.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["skin_problems"].ToString();
                        urinary_complaints.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["urinary_complaints"].ToString();
                        blood_group.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["blood_group"].ToString();
                        hernia.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["hernia"].ToString();
                        mental_illness.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["mental_illness"].ToString();
                        fits.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["fits"].ToString();
                        joint_muscle_pain.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["joint_muscle_pain"].ToString();
                        work_performance.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["work_performance"].ToString();
                        cancer.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["cancer"].ToString();
                        abnormal_blood_tests.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["abnormal_blood_tests"].ToString();
                        addiction.SelectedValue = cursor.Result.Current.ElementAt<BsonDocument>(0)["addiction"].ToString();
                        complaints.SelectedValue= cursor.Result.Current.ElementAt<BsonDocument>(0)["complaints"].ToString();
                        oral.SelectedValue= cursor.Result.Current.ElementAt<BsonDocument>(0)["oral_nasal_ulcers"].ToString();
                    }
                }
                return 1;
            }
            else
                return 0;
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            if (prompt.ShowDialog("Are you sure you want to delete this entry?", "Please confirm") == "YES")

            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();
                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);
                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("history");
                var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
                //var result = collection.DeleteOneAsync(filter);

                var result = Task.Run(() =>
                {
                    return collection.DeleteOneAsync(filter);
                });



                Label2.Text = result.ToString();

                Label2.Text = result.ToString();
                prompt.form_status("Entry deleted successfully.");
            }
           

        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (prompt.ShowDialog("Are you sure you want to update this entry?", "Please confirm") == "YES")

            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();
                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);
                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("history");
                var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Label1.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token_no.Text);
               // var document = filter.ToBsonDocument<BsonDocument>
                var update = Builders<BsonDocument>.Update
                .Set("trade_years", trade_years.Text)
                .Set("fever", fever.SelectedValue)
                .Set("acidity_digestion", acidity_digestion.SelectedValue)
                .Set("allergy_reaction", allergy_reaction.SelectedValue)
                .Set("eye_problem", eye_problem.SelectedValue)
                .Set("ear_disease", ear_disease.SelectedValue)
                .Set("hearing_problem", hearing_problem.SelectedValue)
                .Set("TB", tb.SelectedValue)
                .Set("breathlessness", breathlessness.SelectedValue)
                .Set("respiratoy", respiratory.SelectedValue)
                .Set("bp_heart_disease", bp_heart_disease.SelectedValue)
                .Set("diabetes", diabetes.SelectedValue)
                .Set("jaundice", jaundice.SelectedValue)
                .Set("dental", dental.SelectedValue)
                .Set("walking_handwriting", walking_handwriting.SelectedValue)
                .Set("skin_problems", skin_problem.SelectedValue)
                .Set("urinary_complaints", urinary_complaints.SelectedValue)
                .Set("blood_group", blood_group.Text)
                .Set("hernia", hernia.SelectedValue)
                .Set("mental_illness", mental_illness.SelectedValue)
                .Set("fits", fits.SelectedValue)
                .Set("joint_muscle_pain", joint_muscle_pain.SelectedValue)
                .Set("work_performance", work_performance.SelectedValue)
                .Set("cancer", cancer.SelectedValue)
                .Set("abnormal_blood_tests", abnormal_blood_tests.SelectedValue)
                .Set("addiction", addiction.SelectedValue)
                .Set("complaints", complaints.SelectedValue)
                .Set("oral_nasal_ulcers", oral.SelectedValue);

               // var result = collection.UpdateOneAsync(filter,update);
                // collection.UpdateOneAsync(filter, update);

                var result = Task.Run(() =>
                {
                    return collection.UpdateManyAsync(filter, update); 
                });

               // collection.ReplaceOneAsync(filter, doc);

                Label2.Text = result.ToString();
                prompt.form_status("Entry deleted successfully.");
            }
        }
    }
}