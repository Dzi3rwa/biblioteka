using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MySqlConnection conn = cn.connect();
                conn.Open();
                MySqlCommand command = conn.CreateCommand();
                command.CommandText = "SELECT * FROM library";
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if (update.id == reader.GetInt32("Id"))
                    {
                        TextBox2.Text = reader.GetString("Authors");
                        TextBox3.Text = reader.GetString("Title");
                        TextBox4.Text = reader.GetString("Release_date");
                        TextBox5.Text = reader.GetString("ISBN");
                        TextBox6.Text = reader.GetString("Format");
                        TextBox7.Text = reader.GetInt32("Pages").ToString();
                        TextBox8.Text = reader.GetString("Description");
                    }
                }
                }
        }

        protected void Button1_Click1(EventArgs e)
        {
            
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("View.aspx");
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            
            MySqlConnection conn = cn.connect();
            conn.Open();
            MySqlCommand command = conn.CreateCommand();
            string A = TextBox2.Text;
            string T = TextBox3.Text;
            string R = TextBox4.Text;
            string I = TextBox5.Text;
            string F = TextBox6.Text;
            string P = TextBox7.Text;
            string D = TextBox8.Text;
            Label1.Text = A;
            try
            {
                command.CommandText = "UPDATE library SET Authors='" + A + "', Title='" +
                    T +"', Release_date='"+ R +"', ISBN='"+ I +"', Format='"+ F +
                    "', Pages='"+P+"', Description='"+D+ "' WHERE Id=" + update.id.ToString();
                command.ExecuteNonQuery();
                
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = "Wystąpił błąd bazy " + ex;
            }

            Response.Redirect("View.aspx");
        }
    }
}