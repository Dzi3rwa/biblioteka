using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMy_SQL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private MySqlConnection connect()
        {
            string myconnection =
                "Server=" + serverTB.Text + ";" +
                "Database=" + databaseTB.Text + ";" +
                "User=" + userTB.Text + ";";
            MySqlConnection connection = new MySqlConnection(myconnection);
            cn.server = serverTB.Text;
            cn.db = databaseTB.Text;
            cn.table = databaseTB.Text;
            cn.user = userTB.Text;

            try
            {
                connection.Open();
                Label1.Text = "Connected";
                Response.Redirect("WebForm5.aspx");
                return connection;
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = "Error";
            }
            return null;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            connect();
        }
    }
}