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
    public partial class View : System.Web.UI.Page
    {
        public List<int> tablica = new List<int>();
        public void view()
        {
            tablica.Clear();
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
            dt.Columns.Add("a", typeof(Button));

            MySqlCommand command = conn.CreateCommand();
            command.CommandText = "SELECT * FROM library";
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
                Button button = new Button();
                button.Text = "Delete";
                tablica.Add(ID);
                row["Id"] = ID;
                row["Authors"] = authors;
                row["Title"] = title;
                row["Release_date"] = releseDate;
                row["ISBN"] = ISBN;
                row["Format"] = format;
                row["Pages"] = pages;
                row["Description"] = description;
                row["a"] = button;

                dt.Rows.Add(row);

            }
            GridView1.DataSource = dt;

            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            view();
        }


        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int index = Int32.Parse(btn.CommandArgument);
            string t = tablica[index].ToString();
            index++;
            MySqlConnection conn = cn.connect();
            conn.Open();
            DataTable dt = new DataTable();

            MySqlCommand command = conn.CreateCommand();
            command.CommandText = "DELETE FROM library WHERE ID='" + t + "'";
            MySqlDataReader reader = command.ExecuteReader();
            view();

        }
        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int index = Int32.Parse(btn.CommandArgument);
            int id = tablica[index];
            update.id = id;
            Label1.Text = update.id.ToString();
            Response.Redirect("WebForm4.aspx");
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
    }
}