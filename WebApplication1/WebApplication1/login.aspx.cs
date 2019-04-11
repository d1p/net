using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginButton_Click1(object sender, EventArgs e)
        {
            // this is login button. here check user and match password with database then go to home page
           
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-4JNK0N8\SAKIR;Initial Catalog=criminal_detection;Integrated Security=True");
            sqlConnection.Open();
            String query = "select count(*)from registered_table where user_name='" + username.Text + "'";
            // take user name sql command
            SqlCommand com = new SqlCommand(query, sqlConnection);
            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                String querypassword = "select passwoed from registered_table where user_name='" + username.Text + "'"; // here my database column name passwoed. no PASSWORD
                SqlCommand compassword = new SqlCommand(querypassword, sqlConnection);
                String databasePassword1 = compassword.ExecuteScalar().ToString(); // take password from database and store in a String 
                if (databasePassword1 == password.Text) // check database password and user input password
                {
                    Response.Redirect("home.aspx");
                    // if user and password match with 
                }
                else
                {
                    notice.Text = "Wrong user name or password";
                    //match password registered_table information then go to home
                }

            }
            else
            {
                notice.Text = "Wrong user name or password";
                //check user abilable or not
            }
                
        }
    }
}