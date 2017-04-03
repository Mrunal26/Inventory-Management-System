using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO INVENTORY VALUES ('" + item_name.Text + "','" + tot_qty.Text + "','" + sts.Text + "','" + used_qty.Text + " ','" + bal_qty.Text + "','" + vendor.Text + "','" + price.Text + "','" + tot_price.Text + "')", con);
        cmd.ExecuteNonQuery();


        con.Close();
    }
   
   

   
    protected void price_TextChanged(object sender, EventArgs e)
    {
        try
        {
            tot_price.Text = (float.Parse(tot_qty.Text) * float.Parse(vendor.Text)).ToString();
        }
        catch (Exception ex)
        { }
        
    }
    protected void tot_price_TextChanged(object sender, EventArgs e)
    {

    }
    protected void vendor_TextChanged(object sender, EventArgs e)
    {

    }
}