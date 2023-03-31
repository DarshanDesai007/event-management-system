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
            
            BindData1();
          
        }
    }
    public void BindData1()
    {

        try{
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn.Open();


        SqlCommand comm = new SqlCommand("Select Category_Id,Category_Name from Category_Master");
        comm.Connection = conn;

        SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
        DataSet mydataset = new DataSet();
        mydataAdp.Fill(mydataset);
        DropDownList4.DataSource = mydataset;
        DropDownList4.DataTextField = "Category_Name";
        DropDownList4.DataValueField = "Category_id";

        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, "--select---");
        conn.Close();
         }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }
   

    public void BindData8()
    {
       
     
        
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();

             String food_cat_id = "1";
             //food_cat_id = DropDownList11.SelectedItem.Value;
             //Label1.Text = DropDownList11.SelectedItem.Value;
             SqlCommand comm = null;
             if (DropDownList4.SelectedItem.Text == "Platinum")
             {
                 comm = new SqlCommand("Select Catering_Id,Catering_Name from Catering_Details");

             }
             else if (DropDownList4.SelectedItem.Text == "Gold") 
             {
                 comm = new SqlCommand("Select TOP 5 Catering_Id,Catering_Name from Catering_Details");

             }
             else if (DropDownList4.SelectedItem.Text == "Silver")
             {
                 comm = new SqlCommand("Select TOP 2 Catering_Id,Catering_Name from Catering_Details");

             }
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList13.DataSource = mydataset;
            DropDownList13.DataTextField = "Catering_Name";
            DropDownList13.DataValueField = "Catering_Id";

            DropDownList13.DataBind();
            DropDownList13.Items.Insert(0, "--select---");
            conn.Close();
     
      
    
      

    }


    public void BindData9()
    {

        try{
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn.Open();
        String food_cat_id = "1";
        //food_cat_id = DropDownList11.SelectedItem.Value;

        SqlCommand comm = null;
        if (DropDownList4.SelectedItem.Text == "Platinum")
        {
            comm = new SqlCommand("Select Band_Type from Enterinment_Details");

        }
        else if (DropDownList4.SelectedItem.Text == "Gold")
        {
            comm = new SqlCommand("Select TOP 5 Band_Type from Enterinment_Details");

        }
        else if (DropDownList4.SelectedItem.Text == "Silver")
        {
            comm = new SqlCommand("Select TOP 2 Band_Type from Enterinment_Details");

        }
        
        comm.Connection = conn;

        SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
        DataSet mydataset = new DataSet();
        mydataAdp.Fill(mydataset);
        DropDownList2.DataSource = mydataset;
        DropDownList2.DataTextField = "Band_Type";
        DropDownList2.DataValueField = "Band_Type";

        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "--select---");
        conn.Close();
         }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }

    public void BindData10()
    {
       try{

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            //String food_cat_id = "1";
           // food_cat_id = DropDownList11.SelectedItem.Value;

            SqlCommand comm = null;
            if (DropDownList4.SelectedItem.Text == "Platinum")
            {
                comm = new SqlCommand("Select Card_Desc from Invitation_Card_Details");

            }
            else if (DropDownList4.SelectedItem.Text == "Gold")
            {
                comm = new SqlCommand("Select TOP 5 Card_Desc from Invitation_Card_Details");

            }
            else if (DropDownList4.SelectedItem.Text == "Silver")
            {
                comm = new SqlCommand("Select TOP 2 Card_Desc from Invitation_Card_Details");

            }
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList14.DataSource = mydataset;
            DropDownList14.DataTextField = "Card_Desc";
            DropDownList14.DataValueField = "Card_Desc";

            DropDownList14.DataBind();
            DropDownList14.Items.Insert(0, "--select---");
            conn.Close();
       }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }


    public void BindData11()
    {
        try{
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            //String food_cat_id = "1";
            //food_cat_id = DropDownList11.SelectedItem.Value;
            SqlCommand comm = null;
            if (DropDownList4.SelectedItem.Text == "Platinum")
            {
                comm = new SqlCommand("Select Decoration_Type from Decoration_Details");

            }
            else if (DropDownList4.SelectedItem.Text == "Gold")
            {
                comm = new SqlCommand("Select TOP 5 Decoration_Type from Decoration_Details");

            }
            else if (DropDownList4.SelectedItem.Text == "Silver")
            {
                comm = new SqlCommand("Select TOP 2 Decoration_Type from Decoration_Details");

            }
            
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList15.DataSource = mydataset;
            DropDownList15.DataTextField = "Decoration_Type";
            DropDownList15.DataValueField = "Decoration_Type";

            DropDownList15.DataBind();
            DropDownList15.Items.Insert(0, "--select---");
            conn.Close();
       
         }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }
    }

    public void BindData12()
    {
       
        try{
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            //String food_cat_id = "1";
           // food_cat_id = DropDownList11.SelectedItem.Value;
            SqlCommand comm = null;
            if (DropDownList4.SelectedItem.Text == "Platinum")
            {
                comm = new SqlCommand("Select Photographer_Name from Photography_Details");
            }
            else if (DropDownList4.SelectedItem.Text == "Gold")
            {
                comm = new SqlCommand("Select TOP 5 Photographer_Name from Photography_Details");
            }
            else if (DropDownList4.SelectedItem.Text == "Silver")
            {
                comm = new SqlCommand("Select TOP 2 Photographer_Name from Photography_Details");
            }
            
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList16.DataSource = mydataset;
            DropDownList16.DataTextField = "Photographer_Name";
            DropDownList16.DataValueField = "Photographer_Name";

            DropDownList16.DataBind();
            DropDownList16.Items.Insert(0, "--select---");
            conn.Close();
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }

   
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData2();
       
        BindData21();
        BindData8();
        BindData9();
        BindData10();
        BindData11();
        BindData12();
    }
    public void BindData21()
    {

        try
        {
            SqlCommand comm = null;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn.Open();

            String food_cat_id = "1";
           
            if (DropDownList4.SelectedItem.Text == "Platinum")
            {
                comm = new SqlCommand("Select Hotel_Id,Hotel_Name from Hotel_Profile_Details");
           
            }
            else if (DropDownList4.SelectedItem.Text == "Gold")
            {
                comm = new SqlCommand("Select TOP 5 Hotel_Id,Hotel_Name from Hotel_Profile_Details");
           
            }
            else if(DropDownList4.SelectedItem.Text == "Silver")
            {
                comm = new SqlCommand("Select TOP 2 Hotel_Id,Hotel_Name from Hotel_Profile_Details");
           
            }
           comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList6.DataSource = mydataset;
            DropDownList6.DataTextField = "Hotel_Name";
            DropDownList6.DataValueField = "Hotel_Id";

            DropDownList6.DataBind();
            DropDownList6.Items.Insert(0, "--select---");
            conn.Close();
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }
    public void BindData2()
    {
        
        try{

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
     
            conn.Open();

        String food_cat_id = "1";
        food_cat_id = DropDownList4.SelectedItem.Value;
        SqlCommand comm = new SqlCommand("Select Sub_Category_Id,Sub_Category_Name from Sub_Category_Master where Category_Id =" + food_cat_id);
        comm.Connection = conn;

        SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
        DataSet mydataset = new DataSet();
        mydataAdp.Fill(mydataset);
        DropDownList5.DataSource = mydataset;
        DropDownList5.DataTextField = "Sub_Category_Name";
        DropDownList5.DataValueField = "Sub_Category_Id";

        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, "--select---");
        conn.Close();
         }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Check The Data ...";
        }

    }
   
  
   
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        //BindData3();
    }
    //public void BindData3()
    //{

    //    try{
    //    SqlConnection conn = new SqlConnection();
    //    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    conn.Open();

    //    String food_cat_id = "1";
    //    food_cat_id = DropDownList5.SelectedItem.Value;


    //    SqlCommand comm = new SqlCommand("Select Package_Id,Package_Name from Package_Master where Sub_Category_Id =" + food_cat_id);
    //    comm.Connection = conn;

    //    SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
    //    DataSet mydataset = new DataSet();
    //    mydataAdp.Fill(mydataset);
    //    DropDownList11.DataSource = mydataset;

    //    DropDownList11.DataTextField = "Package_Name";
    //    DropDownList11.DataValueField = "Package_Id";

    //    DropDownList11.DataBind();
    //    DropDownList11.Items.Insert(0, "--select---");
    //    conn.Close();
    //     }
    //    catch (Exception)
    //    {
    //        Label1.ForeColor = System.Drawing.Color.Red;
    //        Label1.Text = "Please Check The Data ...";
    //    }

    //}
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

   
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            
            SqlCommand comm = new SqlCommand("INSERT INTO User_Selection_Details(Category_id,SubCategory_Id,Hotel_Id,UserName,Catering_Id,Enterinment_Id,Invitation_Id,Decoration_Id,Photography_Id)  VALUES('" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "','" + Session["user"].ToString() + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "')", conn);


            comm.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Record is Save...";
            Session["package"] = DropDownList4.SelectedItem.Text;

            conn.Close();
            Response.Redirect("User_Selection_Food.aspx");
       
       
       
    }
    protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}