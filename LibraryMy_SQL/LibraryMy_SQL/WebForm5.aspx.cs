using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = cn.connect();
            conn.Open();
            MySqlCommand command = conn.CreateCommand();
            
            command.CommandText = "SELECT * FROM users";
            command.ExecuteNonQuery();
            MySqlDataReader reader = command.ExecuteReader();
            bool b = false;

                string login, password;
                while (reader.Read())
                {
                    login = reader.GetString("login");
                    password = reader.GetString("password");
                    if((login == loginTB.Text) && (password == passwordTB.Text))
                    {
                        b = true;
                    }
                }
                if (b)
                {
                    Response.Redirect("View.aspx");
                }
                else
                {
                    Label1.Text = "Nie ma takiego użytkownika";
                }

        }

        protected void ButtonRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm6.aspx");
        }
    }
}