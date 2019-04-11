using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class peopleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-4JNK0N8\SAKIR;Initial Catalog=criminal_detection;Integrated Security=True");

            sqlConnection.Open();
            String query1 = "select * from public_table";
            SqlCommand command1 = new SqlCommand(query1, sqlConnection);
            SqlDataReader reader = command1.ExecuteReader();
            GridView.DataSource = reader;
            GridView.DataBind();
        }
    }
}