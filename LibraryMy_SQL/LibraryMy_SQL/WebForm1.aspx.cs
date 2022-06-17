using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public int insert(string Author, string title, string date, string isbn, string format, int pages, string desc)
        {
            if ( Author == "" | title == "" | date == "" | isbn == "" | format == "" | pages.ToString() == "" | desc == "")
            {
                Label1.Text = "Puste pola!";
            }
            MySqlConnection conn = cn.connect();
            conn.Open();
            if (conn == null) return -1;
            MySqlCommand command = conn.CreateCommand();
            try
            {
                command.CommandText = "INSERT INTO library ( Authors, Title, Release_date, ISBN, Format, Pages, Description) VALUES ('" + Author + "', '" + title + "', '" + date + "', '" + isbn + "', '" + format + "', '" + pages + "', '" + desc + "');";
                command.ExecuteNonQuery();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = "Wystąpił błąd bazy " + ex;
            }
            return 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                insert(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, Int32.Parse(TextBox7.Text), TextBox8.Text);
                Response.Redirect("View.aspx");
            }
            catch
            {
                Label1.Text = "Nieprawidłowe dane";
            }    
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("View.aspx");
        }
    }
}