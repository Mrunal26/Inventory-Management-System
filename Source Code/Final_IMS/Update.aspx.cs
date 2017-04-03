using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from inventory", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete FROM inventory where item_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int item_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");
        //TextBox txtname=(TextBox)gr.cell[].control[];
        TextBox i_name = (TextBox)row.Cells[0].Controls[0];
        TextBox i_total_quantity = (TextBox)row.Cells[1].Controls[0];
        TextBox i_status = (TextBox)row.Cells[2].Controls[0];
        TextBox i_used_quantity = (TextBox)row.Cells[3].Controls[0];
        TextBox i_balance_quantity = (TextBox)row.Cells[4].Controls[0];
        TextBox i_price = (TextBox)row.Cells[5].Controls[0];
        TextBox i_tot_price = (TextBox)row.Cells[6].Controls[0];
        TextBox i_vendor = (TextBox)row.Cells[7].Controls[0];
        GridView1.EditIndex = -1;
        con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);
        SqlCommand cmd = new SqlCommand("update inventory set item_name='" + i_name.Text + "',item_total_quantity='" + i_total_quantity.Text + "',item_status='" + i_status.Text + "',item_used_quantity='" + i_used_quantity.Text + "',item_balance_quantity='" + i_balance_quantity.Text + "',item_price='" + i_price.Text + "',item_tot_price='" + i_tot_price.Text + "',item_vendor='" + i_vendor.Text + "'where item_id='" + item_id + "'", con);
        cmd.ExecuteScalar();
        con.Close();
        gvbind();
        //GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }
}