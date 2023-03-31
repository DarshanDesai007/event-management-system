using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Default2 : System.Web.UI.Page
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


            SqlCommand comm = new SqlCommand("Select Package_Id,Package_Name from Package_Master");
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList1.DataSource = mydataset;
            DropDownList1.DataTextField = "Package_Name";
            DropDownList1.DataValueField = "Package_id";

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
            SqlCommand comm = new SqlCommand("INSERT INTO Invitation_Card_Details(Card_Desc,Image,Package_Id)  VALUES('" + TextBox1.Text + "','" + path + "','" + DropDownList1.SelectedItem.Value + "')", conn);


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
        TextBox1.Text = "";
    }
}