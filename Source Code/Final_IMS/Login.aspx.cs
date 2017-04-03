using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        con.Open();

        if (username.Text == "admin" && Password.Text == "admin")
        {

            Response.Redirect("Homepage.aspx");
        }


        else
        {

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM NEWADMIN WHERE admin_username='" + username.Text + "' AND admin_password='" + Password.Text + "'", con);
            int a = Convert.ToInt32(cmd.ExecuteScalar());

            SqlCommand cmd1 = new SqlCommand("SELECT admin_id FROM NEWADMIN WHERE admin_username='" + username.Text + "'", con);
            Session["admin_id"] = cmd1.ExecuteScalar();
            if (a >= 1)
            {
                Response.Redirect("Homepage.aspx");
            }

            else
            {
                Label1.Visible = true;
            }


        }

        con.Close();




    }
    protected void Register_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO NEWADMIN VALUES ('" + FirstName.Text + "','" + LastName.Text + "','" + User_name.Text + "','" + Password_enter.Text + " ')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx");


    }
}