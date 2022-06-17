using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            MySqlConnection conn = cn.connect();
            conn.Open();
            MySqlCommand command = conn.CreateCommand();
            try
            {
                command.CommandText = "INSERT INTO users ( login, password) VALUES ('" + loginTB.Text + "','" + passwordTB.Text + "')";
                command.ExecuteNonQuery();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = "Wystąpił błąd bazy " + ex;
            }
            Response.Redirect("WebForm5.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }
    }
}