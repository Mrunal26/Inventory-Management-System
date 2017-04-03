using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class view : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void go_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM INVENTORY WHERE item_id='" + viewid.Text + "'",con);
        //cmd.ExecuteNonQuery();
        //con.Close();
    }
}