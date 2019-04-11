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
    public partial class searchPeople : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void scircle_Click(object sender, EventArgs e)
        {
            Session["value"] = searchBox.Text;
            Response.Redirect("searchResult.aspx");
        }
    }
}