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
        {

            BindData21();

        }
    }

    public void BindData21()
    {
        Session["package"] = "Gold";
        String str = Session["package"].ToString();
       
            SqlCommand comm = null;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn.Open();

            String food_cat_id = "1";

            if (str == "Platinum")
            {
                comm = new SqlCommand("Select Food_Category_ID,Food_Category_Name from Food_Category_Master");

            }
            else if (str == "Gold")
            {
                comm = new SqlCommand("Select TOP 5 Food_Category_ID,Food_Category_Name from Food_Category_Master");

            }
            else if (str == "Silver")
            {
                comm = new SqlCommand("Select TOP 2 Food_Category_ID,Food_Category_Name from Food_Category_Master");

            }
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList4.DataSource = mydataset;
            DropDownList4.DataTextField = "Food_Category_Name";
            DropDownList4.DataValueField = "Food_Category_Id";

            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "--select---");
            conn.Close();
      

    }


   
    


    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData5();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData6();
    }

   

   void BindData5()
    {

       
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();

            int food_cat_id = 1;
            //Label1.Text = DropDownList4.SelectedItem.Value;
            SqlCommand comm = new SqlCommand("Select Food_SubCategory_Id,Food_SubCategory_Name from Food_SubCategory_Master where Food_Category_Id =" + DropDownList4.SelectedValue + "");
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList5.DataSource = mydataset;
            DropDownList5.DataTextField = "Food_SubCategory_Name";
            DropDownList5.DataValueField = "Food_SubCategory_Id";

            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "--select---");
            conn.Close();
      
    }

    public void BindData6()
    {

        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();

            String food_cat_id = "1";
            food_cat_id = DropDownList5.SelectedItem.Value;
            SqlCommand comm = new SqlCommand("Select Food_Item_Name from Food_Item_Details where Food_SubCategory_Id =" + food_cat_id);
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList11.DataSource = mydataset;
            DropDownList11.DataTextField = "Food_Item_Name";
            DropDownList11.DataValueField = "Food_Item_Name";

            DropDownList11.DataBind();
            DropDownList11.Items.Insert(0, "--select---");
            conn.Close();
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }


    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();

            SqlCommand comm = new SqlCommand("INSERT INTO FoodSelect(Username,Package,Foodname,Sub_FoodName,FoodItem)  VALUES('" + Session["user"].ToString() + "','" + Session["Package"].ToString() + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "')", conn);


            comm.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Record is Save...";
            Session["package"] = DropDownList4.SelectedItem.Text;

            conn.Close();
        }
        catch (Exception)
        {
            Label1.Text = "Please Enter Valid Data";
        }
    }
}