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
    public partial class WebForm5 : System.Web.UI.Page
    { //int[] sc = new int[10];

        //  Session["MyArray"] = new string[] {"one", "two", "three" };
        //string[] sess = new string[10];

        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            single_session.Visible = false;
            multi_session.Visible = false;
            opt.Visible = false;


        }

        protected void enter_Click(object sender, EventArgs e)
        {
            if (fname.Text.Equals(""))
            {
                Label3.Text = "Please enter factory name";
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Equals("--select--"))
            {
                Label3.Text = "Please select area";
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Visible = true;
            }
            else
            {
                MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
                MongoClient mongo = new MongoClient();
                var settings = new MongoClientSettings { };
                var client1 = new MongoClient(settings);
                var db = client.GetDatabase("MCS");
                var collection = db.GetCollection<BsonDocument>("fact_details");
                var filter = Builders<BsonDocument>.Filter.Eq("Fact_Name", fname.Text) & Builders<BsonDocument>.Filter.Eq("Area", DropDownList1.SelectedValue.ToString());
                var cursor = collection.FindAsync(filter);
                string[] sess = new string[20];
                int count1 = 0;
                cursor.Wait();
                using (cursor.Result)
                {
                    while (cursor.Result.MoveNextAsync().Result)
                    {
                        count1 = cursor.Result.Current.Count<BsonDocument>();


                        TableHeaderRow thRow = new TableHeaderRow();

                        TableHeaderCell thcell1 = new TableHeaderCell();
                        thcell1.Text = "Date";
                        thRow.Cells.Add(thcell1);

                        TableHeaderCell thcell2 = new TableHeaderCell();
                        thcell2.Text = "Sesison Code";
                        thRow.Cells.Add(thcell2);

                        Table1.Rows.Add(thRow);

                        for (int i = 0; i < count1; i++)
                        {
                            TableRow trow = new TableRow();

                            TableCell cell1 = new TableCell();
                            cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Date"].ToString();
                            trow.Cells.Add(cell1);
                            TableCell cell2 = new TableCell();
                            cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Session_code"].ToString();
                            trow.Cells.Add(cell2);
                            sess[i] = cursor.Result.Current.ElementAt<BsonDocument>(i)["Session_code"].ToString();
                            Table1.Rows.Add(trow);


                        }
                    }
                }
                opt.Visible = true;
                Session["total"] = count1;
                Session["Session_array"] = sess;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //  ConfigurationManager.AppSettings["sessioncode"] = TextBox1.Text;
            Session["Session_code"] = TextBox1.Text;
            Response.Redirect("info_report.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //   Response.Redirect("xyz.aspx?sess="+sess);
            //  Response.Redirect("WebForm5.aspx?Name=" + txtName.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            single_session.Visible = true;


            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Fact_Name", fname.Text) & Builders<BsonDocument>.Filter.Eq("Area", DropDownList1.SelectedValue.ToString());
            var cursor = collection.FindAsync(filter);
            string[] sess = new string[20];
            int count1 = 0;
            cursor.Wait();
            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    count1 = cursor.Result.Current.Count<BsonDocument>();


                    TableHeaderRow thRow = new TableHeaderRow();

                    TableHeaderCell thcell1 = new TableHeaderCell();
                    thcell1.Text = "Date";
                    thRow.Cells.Add(thcell1);

                    TableHeaderCell thcell2 = new TableHeaderCell();
                    thcell2.Text = "Sesison Code";
                    thRow.Cells.Add(thcell2);

                    Table1.Rows.Add(thRow);

                    for (int i = 0; i < count1; i++)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Date"].ToString();
                        trow.Cells.Add(cell1);
                        TableCell cell2 = new TableCell();
                        cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["Session_code"].ToString();
                        trow.Cells.Add(cell2);
                        sess[i] = cursor.Result.Current.ElementAt<BsonDocument>(i)["Session_code"].ToString();
                        Table1.Rows.Add(trow);


                    }
                }
            }
            opt.Visible = true;
            Session["total"] = count1;
            Session["Session_array"] = sess;
        }
    


    

        protected void Button5_Click(object sender, EventArgs e)
        {
            multi_session.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
        }
    
