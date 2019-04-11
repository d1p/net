using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class addPeople : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //---
            // this is signup button here take full information from user amd chek previous existed or not. then finnaly signup 

            if (full_name.Text == "" || nid_number.Text == "" || gender.Text == "" || blood_group.Text == "" || present_address.Text == "" || phone_number.Text == "") // check full fillup or not
            {
                notice.Text = "Minimum * marks information you need to insetr.";
            }
            else
            {
                
                
                    SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-4JNK0N8\SAKIR;Initial Catalog=criminal_detection;Integrated Security=True");  // my connection string
                    sqlConnection.Open();       // connection open
                    String query = "select count(*)from public_table where nid_number='" + nid_number.Text + "'";
                    // checking query. user name abilable or not?
                    SqlCommand com = new SqlCommand(query, sqlConnection);
                    int count = Convert.ToInt32(com.ExecuteScalar());
                    if (count > 0)
                    {
                        notice.Text = "*This NID number already exist.";
                    }
                    else
                    {
                        String query1 = "insert into dbo.public_table values('" + full_name.Text + "','" + nid_number.Text + "','" + date_of_birth.Text + "'," +
                        "'" + gender.Text + "','" + blood_group.Text + "','" + present_address.Text + "','" + permanent_address.Text + "','" + country.Text + "','" + nationality.Text + "'," +
                        "'" + phone_number.Text + "','" + email_address.Text + "','" + occupation.Text + "','" + fathers_name.Text + "','" + mothers_name.Text + "', '"+ crime.Text + "','" + crime_dismiss.Text + "','" + character_color.Text + "')";
                        // insert query. take from user and set in database
                        SqlCommand command = new SqlCommand(query1, sqlConnection);
                        // sql command method
                        int i = command.ExecuteNonQuery();
                        // for checking success or failed to data save in database
                        sqlConnection.Close();
                        if (i > 0)
                        {
                            notice.Text = "Success";    // notice is a level. using for confirmation
                        full_name.Text = nid_number.Text = date_of_birth.Text = gender.Text = blood_group.Text = present_address.Text = permanent_address.Text = country.Text = nationality.Text = phone_number.Text = email_address.Text = occupation.Text = fathers_name.Text = mothers_name.Text = crime.Text = crime_dismiss.Text = character_color.Text = "";
                        // after complete set defult blank by using ""
                        }
                        else
                        {
                            notice.Text = "Faild";
                        }
                    
                    }
            }
            //--
        }
    }
}