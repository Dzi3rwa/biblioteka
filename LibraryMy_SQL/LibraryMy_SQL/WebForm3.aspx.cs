using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("View.aspx");
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string A = TextBox2.Text, T = TextBox3.Text, R = TextBox4.Text, I = TextBox5.Text, F = TextBox6.Text, D = TextBox8.Text;
            string P = TextBox7.Text;
            MySqlConnection conn = cn.connect();
            conn.Open();
            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(Int32));
            dt.Columns.Add("Authors", typeof(string));
            dt.Columns.Add("Title", typeof(string));
            dt.Columns.Add("Release_date", typeof(string));
            dt.Columns.Add("ISBN", typeof(string));
            dt.Columns.Add("Format", typeof(string));
            dt.Columns.Add("Pages", typeof(Int32));
            dt.Columns.Add("Description", typeof(string));
            MySqlCommand command = conn.CreateCommand();
            command.CommandText = "SELECT * FROM library WHERE Authors='" + A + "' OR Title ='" + T + "' OR Release_date='" + R + "' OR ISBN ='"+
                I+"' OR Format='"+F+"' OR Pages='" + P + "' OR Description='" + D + "'";
            MySqlDataReader reader = command.ExecuteReader();
            string authors, title, releseDate, ISBN, format, description;
            int ID, pages;
            
            while (reader.Read())
            {
                ID = reader.GetInt32("Id");
                authors = reader.GetString("Authors");
                title = reader.GetString("Title");
                releseDate = reader.GetString("Release_date");
                ISBN = reader.GetString("ISBN");
                format = reader.GetString("Format");
                pages = reader.GetInt32("Pages");
                description = reader.GetString("Description");
                DataRow row = dt.NewRow();
                row["Id"] = ID;
                row["Authors"] = authors;
                row["Title"] = title;
                row["Release_date"] = releseDate;
                row["ISBN"] = ISBN;
                row["Format"] = format;
                row["Pages"] = pages;
                row["Description"] = description;
                dt.Rows.Add(row);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}