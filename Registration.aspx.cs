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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();
            String str = "";
            if (RadioButton1.Checked == true)
            {
                str = "Male";
            }
            else
            {
                str = "Female";
            }
            SqlCommand comm = new SqlCommand("INSERT INTO Registration_Details(User_Id,Password,First_Name,Last_Name,Gender,Address,Country,State,City,Contact_No,Email_ID)  VALUES('" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + str + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')", conn);


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
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
     

    }
}