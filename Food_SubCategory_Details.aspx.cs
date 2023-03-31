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
    int id;
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


            SqlCommand comm = new SqlCommand("Select Food_Category_Id,Food_Category_Name from Food_Category_Master");
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList1.DataSource = mydataset;
            DropDownList1.DataTextField = "Food_Category_Name";
            DropDownList1.DataValueField = "Food_Category_id";

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
            food_cat_id=DropDownList1.SelectedItem.Value;
            SqlCommand comm = new SqlCommand("INSERT INTO Food_SubCategory_Master(Food_SubCategory_Name,Food_SubCategory_Description,Food_Category_id)  VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + food_cat_id +"' )", conn);


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
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}