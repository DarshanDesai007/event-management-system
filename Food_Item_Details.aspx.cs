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
   
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{

        BindData();
}

public void BindData()
{

   
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn.Open();

        String food_cat_id="1";
        food_cat_id = DropDownList1.SelectedItem.Value;
        SqlCommand comm = new SqlCommand("Select Food_SubCategory_Id,Food_SubCategory_Name from Food_SubCategory_Master where Food_Category_Id =" +food_cat_id);
        comm.Connection = conn;

        SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
        DataSet mydataset = new DataSet();
        mydataAdp.Fill(mydataset);
        DropDownList3.DataSource = mydataset;
        DropDownList3.DataTextField = "Food_SubCategory_Name";
        DropDownList3.DataValueField = "Food_SubCategory_Id";

        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, "--select---");
        conn.Close();
   
}
protected void Button1_Click(object sender, EventArgs e)
{
    try
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn.Open();

        SqlCommand comm = new SqlCommand("INSERT INTO Food_Item_Details(Food_Item_Name,Food_Item_Description,Food_Category_id,Food_SubCategory_Id)  VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList3.SelectedItem.Value + "' )", conn);


        comm.ExecuteNonQuery();
        Label1.ForeColor = System.Drawing.Color.Green;
        Label1.Text = "Record is Save...";

        conn.Close();
    }
    catch (Exception )
    {
        Label1.ForeColor = System.Drawing.Color.Red;
        Label1.Text = "Please Enter Valid Data...";
    }
  
}
protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void Button2_Click(object sender, EventArgs e)
{
    TextBox1.Text = "";
    TextBox2.Text = "";
   
}
}