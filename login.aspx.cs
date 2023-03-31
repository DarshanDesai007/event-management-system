using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Admin")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Registration_Details where User_Id =@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", "Admin123");
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Admin_Page.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            Session["user"] = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("select * from Registration_Details where User_Id =@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("User_Page.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}

