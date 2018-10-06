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
    public partial class WebForm10 : System.Web.UI.Page
    {
        int i = 0, count = 0;
        string[,] data = new string[200, 36];

        protected void Upload_Click(object sender, EventArgs e)
        {
            var reader = new StreamReader(File.OpenRead(path.Text));

            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();
                var values = line.Split(',');

                data[count, 0] = values[0];
                data[count, 1] = values[1];
                data[count, 2] = values[2];
                data[count, 3] = values[3];
                data[count, 4] = values[4];
                data[count, 5] = values[5];
                data[count, 6] = values[6];
                data[count, 7] = values[7];
                data[count, 8] = values[8];
                data[count, 9] = values[9];
                data[count, 10] = values[10];
                data[count, 11] = values[11];
                data[count, 12] = values[12];
                data[count, 13] = values[13];
                data[count, 14] = values[14];
                data[count, 15] = values[15];
                data[count, 16] = values[16];
                data[count, 17] = values[17];
                data[count, 18] = values[18];
                data[count, 19] = values[19];
                data[count, 20] = values[20];
                data[count, 21] = values[21];
                data[count, 22] = values[22];
                data[count, 23] = values[23];
                data[count, 24] = values[24];
                data[count, 25] = values[25];
                data[count, 26] = values[26];
                data[count, 27] = values[27];
                data[count, 28] = values[28];
                data[count, 29] = values[29];
                data[count, 30] = values[30];
                data[count, 31] = values[31];
                data[count, 32] = values[32];
                data[count, 33] = values[33];
                data[count, 34] = values[34];
                data[count, 35] = values[35];
                // data[count, 33] = values[33];
                count++;
            }

            i = 0;
            while (i < count)
            {
                TableHeaderRow thRow = new TableHeaderRow();

                TableHeaderCell thcell1 = new TableHeaderCell();
                thcell1.Text = data[i, 0];
                thRow.Cells.Add(thcell1);

                TableHeaderCell thcell2 = new TableHeaderCell();
                thcell2.Text = data[i, 1];
                thRow.Cells.Add(thcell2);

                TableHeaderCell thcell3 = new TableHeaderCell();
                thcell3.Text = data[i, 2];
                thRow.Cells.Add(thcell3);

                TableHeaderCell thcell4 = new TableHeaderCell();
                thcell4.Text = data[i, 3];
                thRow.Cells.Add(thcell4);

                TableHeaderCell thcell5 = new TableHeaderCell();
                thcell5.Text = data[i, 4];
                thRow.Cells.Add(thcell5);

                TableHeaderCell thcell6 = new TableHeaderCell();
                thcell6.Text = data[i, 5];
                thRow.Cells.Add(thcell6);

                TableHeaderCell thcell7 = new TableHeaderCell();
                thcell7.Text = data[i, 6];
                thRow.Cells.Add(thcell7);

                TableHeaderCell thcell8 = new TableHeaderCell();
                thcell8.Text = data[i, 7];
                thRow.Cells.Add(thcell8);
               
                TableHeaderCell thcell9 = new TableHeaderCell();
                thcell9.Text = data[i, 8];
                thRow.Cells.Add(thcell9);

                TableHeaderCell thcell10 = new TableHeaderCell();
                thcell10.Text = data[i, 9];
                thRow.Cells.Add(thcell10);

                TableHeaderCell thcell11 = new TableHeaderCell();
                thcell11.Text = data[i, 10];
                thRow.Cells.Add(thcell11);

                TableHeaderCell thcell12 = new TableHeaderCell();
                thcell12.Text = data[i, 11];
                thRow.Cells.Add(thcell12);

                TableHeaderCell thcell13 = new TableHeaderCell();
                thcell13.Text = data[i, 12];
                thRow.Cells.Add(thcell13);

                TableHeaderCell thcell14 = new TableHeaderCell();
                thcell14.Text = data[i, 13];
                thRow.Cells.Add(thcell14);

                TableHeaderCell thcell15 = new TableHeaderCell();
                thcell15.Text = data[i, 14];
                thRow.Cells.Add(thcell15);

                TableHeaderCell thcell16 = new TableHeaderCell();
                thcell16.Text = data[i, 15];
                thRow.Cells.Add(thcell16);

                TableHeaderCell thcell17 = new TableHeaderCell();
                thcell17.Text = data[i, 16];
                thRow.Cells.Add(thcell17);

                TableHeaderCell thcell18 = new TableHeaderCell();
                thcell18.Text = data[i, 17];
                thRow.Cells.Add(thcell18);

                TableHeaderCell thcell19 = new TableHeaderCell();
                thcell19.Text = data[i, 18];
                thRow.Cells.Add(thcell19);

                TableHeaderCell thcell20 = new TableHeaderCell();
                thcell20.Text = data[i, 19];
                thRow.Cells.Add(thcell20);

                TableHeaderCell thcell21 = new TableHeaderCell();
                thcell21.Text = data[i, 20];
                thRow.Cells.Add(thcell21);

                TableHeaderCell thcell22 = new TableHeaderCell();
                thcell22.Text = data[i, 21];
                thRow.Cells.Add(thcell22);

                TableHeaderCell thcell23 = new TableHeaderCell();
                thcell23.Text = data[i, 22];
                thRow.Cells.Add(thcell23);

                TableHeaderCell thcell24 = new TableHeaderCell();
                thcell24.Text = data[i, 23];
                thRow.Cells.Add(thcell24);

                TableHeaderCell thcell25 = new TableHeaderCell();
                thcell25.Text = data[i, 24];
                thRow.Cells.Add(thcell25);

                TableHeaderCell thcell26 = new TableHeaderCell();
                thcell26.Text = data[i, 25];
                thRow.Cells.Add(thcell26);

                TableHeaderCell thcell27 = new TableHeaderCell();
                thcell27.Text = data[i, 26];
                thRow.Cells.Add(thcell27);

                TableHeaderCell thcell28 = new TableHeaderCell();
                thcell12.Text = data[i, 27];
                thRow.Cells.Add(thcell28);

                TableHeaderCell thcell29 = new TableHeaderCell();
                thcell29.Text = data[i, 28];
                thRow.Cells.Add(thcell29);

                TableHeaderCell thcell30 = new TableHeaderCell();
                thcell30.Text = data[i, 29];
                thRow.Cells.Add(thcell30);

                TableHeaderCell thcell31 = new TableHeaderCell();
                thcell31.Text = data[i, 30];
                thRow.Cells.Add(thcell31);

                TableHeaderCell thcell32 = new TableHeaderCell();
                thcell32.Text = data[i, 31];
                thRow.Cells.Add(thcell32);

                TableHeaderCell thcell33 = new TableHeaderCell();
                thcell33.Text = data[i, 32];
                thRow.Cells.Add(thcell33);

                TableHeaderCell thcell34 = new TableHeaderCell();
                thcell34.Text = data[i, 34];
                thRow.Cells.Add(thcell34);

                TableHeaderCell thcell35 = new TableHeaderCell();
                thcell35.Text = data[i, 34];
                thRow.Cells.Add(thcell35);

                TableHeaderCell thcell36 = new TableHeaderCell();
                thcell36.Text = data[i, 35];
                thRow.Cells.Add(thcell36);

                Tab.Rows.Add(thRow);
                i++;
            }



            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();

            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);

            var db = client.GetDatabase("MCS");
            var c1 = db.GetCollection<BsonDocument>("worker_info");
            var c2 = db.GetCollection<BsonDocument>("body_measure");
            var c3 = db.GetCollection<BsonDocument>("g_exam");
            var c4 = db.GetCollection<BsonDocument>("vision_test");
            var c5 = db.GetCollection<BsonDocument>("advice");

            i = 0;
            while (i < count)
            {
                var d1 = new BsonDocument
            {
                {"w_Name",data[i,0]},
                {"token_no",data[i,1]},
                {"w_age",data[i,2]},
                { "w_sex",data[i,3]},
                { "Date_of_employment",data[i,4]},
                { "Materials_handleld",data[i,5]},
                { "Occupation",data[i,6]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                c1.InsertOneAsync(d1);

                var d2 = new BsonDocument
            {
                {"token_no",data[i,1]},
                {"height",data[i,7]},
                { "weight",data[i,8]},
                { "chest",data[i,9]},
                { "abdomen",data[i,10]},
                { "BMI",data[i,11]},
                { "WRC",data[i,12]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                c2.InsertOneAsync(d2);

                var d3 = new BsonDocument
            {
                {"token_no",data[i,1]},
                {"pulse",data[i,13]},
                { "bp",data[i,14]},
                { "rp_rate",data[i,15]},
                { "skin",data[i,16]},
                { "cynosis",data[i,17]},
                { "jaundice",data[i,18]},
                {"ent",data[i,19]},
                { "ent_text",data[i,20]},
                { "mouthcavity",data[i,21]},
                { "mouthcavity_text",data[i,22]},
                { "neck",data[i,23]},
                { "neck_text",data[i,24]},
                {"gait",data[i,25]},
                { "gait_text",data[i,26]},
                { "tremors",data[i,27]},
                { "tremors_text",data[i,28]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                c3.InsertOneAsync(d3);

                var d4 = new BsonDocument
            {
                {"token_no",data[i,1]},
                {"distant_right",data[i,29]},
                { "distant_left",data[i,30]},
                { "near_right",data[i,31]},
                { "near_left",data[i,32]},
                { "color",data[i,33]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                c4.InsertOneAsync(d4);

                var d5 = new BsonDocument
            {
                {"token_no",data[i,1]},
                {"Fitness",data[i,34]},
                { "Advice",data[i,35]},
                { "Session_code",(string)(Session["Session_code"])}
           };
                c5.InsertOneAsync(d5);

                i++;
                status.Visible = true;
                status.Text = count.ToString() + " entries uploaded into the database successfully.";
            }

        

            
    }

    protected void Page_Load(object sender, EventArgs e)
        {
            status.Visible = false;
            string Session_code = (string)(Session["Session_code"]);
            MongoClient client = new MongoClient(ConfigurationManager.AppSettings["connectionString"]);
            MongoClient mongo = new MongoClient();
            var settings = new MongoClientSettings { };
            var client1 = new MongoClient(settings);
            var db = client.GetDatabase("MCS");
            var collection = db.GetCollection<BsonDocument>("fact_details");
            var filter = Builders<BsonDocument>.Filter.Eq("Session_code", Session_code);
            var cursor = collection.FindAsync(filter);
            cursor.Wait();
            using (cursor.Result)
            {

                while (cursor.Result.MoveNextAsync().Result)
                {
                    fact_name.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Fact_Name"].ToString();
                    area.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Area"].ToString();
                    date.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Date"].ToString();
                    scode.Text = cursor.Result.Current.ElementAt<BsonDocument>(0)["Session_code"].ToString();
                }
            }
        }

    }
}