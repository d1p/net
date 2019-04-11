using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class searchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String value = Session["value"].ToString(); // here value is user input data in search box
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-4JNK0N8\SAKIR;Initial Catalog=criminal_detection;Integrated Security=True");
            sqlConnection.Open();
            String query = "select * from public_table where nid_number like '%" + value + "%' or date_of_birth like '%" + value + "%' or gender like '%" + value + "%' or blood_group like '%" + value + "%' or present_address like '%" + value + "%' or permanent_address like '%" + value + "%' or full_name like '%" + value + "%' or country like '%" + value + "%' or nationality like '%" + value + "%' or phone_number like '%" + value + "%' or email_address like '%" + value + "%' or occupation like '%" + value + "%' or fathers_name like '%" + value + "%' or mothers_name like '%" + value + "%' or crime like '%" + value + "%' or crime_dismiss like '%" + value + "%' or crime_dismiss like '%" + value + "%' or character_color like '%" + value + "%'";
            //this query will work for search from all column. any data. name or nid or anything...
            SqlCommand command = new SqlCommand(query, sqlConnection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView.DataSource = dt;
            GridView.DataBind();
        }
    }
}