using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addPeople_Click(object sender, EventArgs e)
        {
            Response.Redirect("addPeople.aspx");
        }

        protected void peopleList_Click(object sender, EventArgs e)
        {
            Response.Redirect("peopleList.aspx");
        }

        protected void searchPeople_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchPeople.aspx");
        }

        protected void normalPeopleList_Click(object sender, EventArgs e)
        {

        }

        protected void criminalList_Click(object sender, EventArgs e)
        {

        }

        protected void deletePeople_Click(object sender, EventArgs e)
        {

        }

        protected void updatePeopleInfo_Click(object sender, EventArgs e)
        {

        }

        protected void addCrime_Click(object sender, EventArgs e)
        {

        }

        protected void removeCrime_Click(object sender, EventArgs e)
        {

        }

        protected void Detection_Click(object sender, EventArgs e)
        {

        }
    }
}