using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO Category_Master(Category_Name,Category_Description)  VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            

            comm.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Record is Save...";

            conn.Close();
        }
        catch (Exception )
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}