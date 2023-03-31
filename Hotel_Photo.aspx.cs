using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData1();
    }
    public void BindData1()
    {

        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();


            SqlCommand comm = new SqlCommand("Select Hotel_Id,Hotel_Name from Hotel_Profile_Details");
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList1.DataSource = mydataset;
            DropDownList1.DataTextField = "Hotel_Name";
            DropDownList1.DataValueField = "Hotel_id";

            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select---");
            conn.Close();
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }
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
            SqlCommand comm = new SqlCommand("INSERT INTO Hotel_Photo_Details(Hotel_Photo_Name,Hotel_Photo_Description,Hotel_Id)  VALUES('" + path + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Value + "')", conn);


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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}