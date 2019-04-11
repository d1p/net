using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class signup : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // this is signup button here take full information from user amd chek previous existed or not. then finnaly signup 

            if (Username.Text == "" || email.Text == "" || password.Text == "" || rpassword.Text == "") // check full fillup or not
            {
                notice.Text = "Insert All Information"; 
            }
            else
            {
                if(password.Text !=  rpassword.Text)        // checked user input passoed and confirm passeord
                {
                    notice.Text = "Password not match";
                }
                else
                {
                    SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-4JNK0N8\SAKIR;Initial Catalog=criminal_detection;Integrated Security=True");  // my connection string
                    sqlConnection.Open();       // connection open
                    String query = "select count(*)from registered_table where user_name='" + Username.Text + "'";
                    // checking query. user name abilable or not?
                    SqlCommand com = new SqlCommand(query, sqlConnection);
                    int count = Convert.ToInt32(com.ExecuteScalar());
                    if (count > 0)
                    {
                        notice.Text = "*Username exist. please chose differend user name";
                    }
                    else
                    {
                        String query1 = "insert into dbo.registered_table values('" + Username.Text + "','" + email.Text + "'," + "'" + password.Text + "','" + rpassword.Text + "')";
                        // insert query. take from user and set in database
                        SqlCommand command = new SqlCommand(query1, sqlConnection);
                        // sql command method
                        int i = command.ExecuteNonQuery();
                        // for checking success or failed to data save in database
                        sqlConnection.Close();
                        if (i > 0)
                        {
                            notice.Text = "Success";    // notice is a level. using for confirmation
                            Username.Text = "";
                            email.Text = "";
                            password.Text = "";
                            rpassword.Text = ""; // after complete set defult blank by using ""
                        }
                        else
                        {
                            notice.Text = "Faild";
                        }
                    }   
                }
            }    
        }
    }
}