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
using System.IO;
namespace WebApplication5
{
    public partial class ws : System.Web.UI.Page
    {
      
   

    protected void Page_Load(object sender, EventArgs e)
        {
            fact_view.Visible = false;
            t_error.Visible = false;
            Home.Visible = false;
            new_worker.Visible = false;
            w_pan.Visible = false;
            Button4.Visible = false;
            view.Visible = false;
            Label1.Visible = false;
            w_info.Visible = false;
            emp_List.Visible = false;
            string desig = (string)(Session["designation"]);

            if ((desig == "Chief Medical Officer") || (desig == "Data Processor"))
            {
                Home.Visible = true;
            }

            else if (desig == "Receptionist")
            {
                new_worker.Visible = true;
                emp_List.Visible = true;
            }

            if (!Session["Session_code"].Equals(""))
            {
                TextBox1.Text = (string)(Session["Session_code"]);
            }
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["Session_code"] = TextBox1.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", TextBox1.Text);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    if (cursor.Result.Current.Count<BsonDocument>() == 0)
                    {
                        prompt.Alert("Session does not exist");
                      //   Label1.Text = "Session does not exist";
                       //Label1.Visible = true;
                    }

                    else
                    {
                       
                        fact_view.Visible = true;
                        w_pan.Visible = true;
                        session_code.Text = TextBox1.Text;
                        fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                        fact_area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    }
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["Token_no"] = token.Text;
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("worker_info");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", session_code.Text) & Builders<BsonDocument>.Filter.Eq("token_no", token.Text);
            var cursor = collection.FindAsync(filter);
            string designation = (string)(Session["designation"]);
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {

                    int x = cursor.Result.Current.Count<BsonDocument>();
                    if (x > 0)
                    {
                        w_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_Name"].ToString();
                        w_age.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_age"].ToString();
                        w_sex.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["w_sex"].ToString();

                        if (designation != "Receptionist")
                            Button4.Visible = true;
                        
                        w_pan.Visible = true;
                        fact_view.Visible = true;
                        w_info.Visible = true;
                    }
                    else
                    {
                        t_error.Text = "No such worker yet registered. Please register the worker first.";
                        t_error.Visible = true;
                        w_pan.Visible = true;
                        fact_view.Visible = true;
                        w_info.Visible = false;
                        
                                                   

                            if (designation == "Nurse" || designation == "Assistant Doctor" )
                        {
                            new_worker.Visible = false;
                        }
                            else
                            new_worker.Visible = true;


                    }
                }
            }




        }

        protected void new_worker_Click(object sender, EventArgs e)
        {
            Response.Redirect("winfo.aspx");
        }

        protected void tn_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("tests_page.aspx");
        }

        protected void emp_List_Click(object sender, EventArgs e)
        {
            Response.Redirect("emp_list.aspx");
        }

        protected void upload_emp_List_Click(object sender, EventArgs e)
        {
            
        }

        protected void upload_emp_list_Click1(object sender, EventArgs e)
        {
            Response.Redirect("upload_winfo.aspx");
        }
    }
}