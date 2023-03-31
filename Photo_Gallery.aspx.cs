using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            String filename = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~\\Upload\\" + filename.Trim()));
            String path = "~\\Upload\\" + filename.Trim();

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO PhotoGallery_Master(Photo_Name,Photo_Description)  VALUES('" + path + "','" + TextBox2.Text + "')", conn);


            comm.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Record is Save...";

            conn.Close();
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
}