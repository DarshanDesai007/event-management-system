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
        try{
       
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            String food_cat_id;
            food_cat_id = DropDownList1.SelectedItem.Value;
            String str = Calendar2.SelectedDate.ToString();
            Label1.Text = DropDownList1.SelectedItem.Value;
            SqlCommand comm = new SqlCommand("INSERT INTO Photography_Details(Photographer_Name,Amount,Delievery_Date,Package_Id)  VALUES('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + str + "','" + DropDownList1.SelectedItem.Value + "' )", conn);


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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
       
    }
}