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
    public partial class team_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            add_pan.Visible = false;
            view_pan.Visible = false;
            del_pan.Visible = false;
            add_member.Visible = false;
            update_mem.Visible = false;
            name.Visible = false;
            number.Visible = false;
            uname.Visible = false;
            pwd.Visible = false;


            
        }

        protected void add_Click(object sender, EventArgs e)
        {
            add_pan.Visible = true;
            view_pan.Visible = false;
            add_member.Visible = true;
            update_mem.Visible = false;
            del_pan.Visible = false;
            name.Visible = true;
            number.Visible = true;
            uname.Visible = true;
            pwd.Visible = true;
        }

        protected void view_Click(object sender, EventArgs e)
        {
            add_pan.Visible = false;
            view_pan.Visible = true;
            del_pan.Visible = false;


            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var filter = new BsonDocument();
            var cursor = collection.FindAsync(filter);
            cursor.Wait();

            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    int count1 = cursor.Result.Current.Count<BsonDocument>();


                    TableHeaderRow thRow = new TableHeaderRow();

                    TableHeaderCell thcell0 = new TableHeaderCell();
                    thcell0.Text = "Sr. No.";
                    thRow.Cells.Add(thcell0);

                    TableHeaderCell thcell1 = new TableHeaderCell();
                    thcell1.Text = "Name";
                    thRow.Cells.Add(thcell1);

                    TableHeaderCell thcell2 = new TableHeaderCell();
                    thcell2.Text = "Contact Number";
                    thRow.Cells.Add(thcell2);

                    TableHeaderCell thcell3 = new TableHeaderCell();
                    thcell3.Text = "Designation";
                    thRow.Cells.Add(thcell3);

                    TableHeaderCell thcell4 = new TableHeaderCell();
                    thcell4.Text = "User Name";
                    thRow.Cells.Add(thcell4);

                    TableHeaderCell thcell5 = new TableHeaderCell();
                    thcell5.Text = "Password";
                    thRow.Cells.Add(thcell5);

                    team_view.Rows.Add(thRow);

                    for (int i = 0; i < count1; i++)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell0 = new TableCell();
                        cell0.Text = Convert.ToString(i + 1);
                        trow.Cells.Add(cell0);

                        TableCell cell1 = new TableCell();
                        cell1.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["a_name"].ToString();
                        trow.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["c_no"].ToString();
                        trow.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["designation"].ToString();
                        trow.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["uname"].ToString();
                        trow.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = cursor.Result.Current.ElementAt<BsonDocument>(i)["pwd"].ToString();
                        trow.Cells.Add(cell5);

                        team_view.Rows.Add(trow);


                    }
                }




            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var documnt = new BsonDocument
            {
                {"a_name",name.Text},
                {"c_no",number.Text}, // focus on this
                {"uname",uname.Text},
                 {"designation",designation.SelectedValue},
                { "pwd",pwd.Text},
            };
            collection.InsertOneAsync(documnt);

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            del_mem.Visible = false;
            update_mem.Visible = false;
            add_member.Visible = true;
            add_pan.Visible = false;
            del_pan.Visible = true;
            del_mem.Visible = false;


        }

        protected void del_mem_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var filter = Builders<BsonDocument>.Filter.Eq("a_name", name.Text);
            var delete_doc = collection.DeleteManyAsync(filter);
        }

        protected void update_mem_Click(object sender, EventArgs e)
        {

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var filter = Builders<BsonDocument>.Filter.Eq("a_name", name.Text);
            var update1 = Builders<BsonDocument>.Update.Set("c_no", number.Text);
            var update2 = Builders<BsonDocument>.Update.Set("uname", uname.Text);
            var update3 = Builders<BsonDocument>.Update.Set("designation", designation.SelectedValue);
            var update4 = Builders<BsonDocument>.Update.Set("pwd", pwd.Text);

            var upd1 = collection.UpdateOneAsync(filter, update1);
            var upd2 = collection.UpdateOneAsync(filter, update2);
            var upd3 = collection.UpdateOneAsync(filter, update3);
            var upd4 = collection.UpdateOneAsync(filter, update4);

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            update_mem.Visible = true;
            add_member.Visible = false;
            del_mem.Visible = false;
            add_pan.Visible = true;
            name.Visible = true;
            number.Visible = true;
            uname.Visible = true;
            pwd.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            del_pan.Visible = true;

            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("team_info");
            var filter = Builders<BsonDocument>.Filter.Eq("a_name", name0.Text);

            var cursor = collection.FindAsync(filter);
            cursor.Wait();

            using (cursor.Result)
            {
                while (cursor.Result.MoveNextAsync().Result)
                {
                    c_no.Text= cursor.Result.Current.ElementAt<BsonDocument>(0)["c_no"].ToString();
                    user.Text= cursor.Result.Current.ElementAt<BsonDocument>(0)["uname"].ToString();
                    desig.Text= cursor.Result.Current.ElementAt<BsonDocument>(0)["designation"].ToString();
                }
            }

                    del_mem.Visible = true;
        }
    }
}