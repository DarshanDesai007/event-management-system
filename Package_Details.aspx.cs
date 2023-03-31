﻿using System;
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


            SqlCommand comm = new SqlCommand("Select Category_Id,Category_Name from Category_Master");
            comm.Connection = conn;

            SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
            DataSet mydataset = new DataSet();
            mydataAdp.Fill(mydataset);
            DropDownList1.DataSource = mydataset;
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Category_id";

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
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn.Open();

            SqlCommand comm = new SqlCommand("INSERT INTO Package_Master(Package_Name,Package_Amount,Category_id,Sub_Category_Id)  VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "' )", conn);


            comm.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Record is Save...";

            conn.Close();
        }
        catch (Exception )
        {
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Please Enter Valid Data...";
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

        String food_cat_id = "1";
        food_cat_id = DropDownList1.SelectedItem.Value;
        SqlCommand comm = new SqlCommand("Select Sub_Category_Id,Sub_Category_Name from Sub_Category_Master where Category_Id =" + food_cat_id);
        comm.Connection = conn;

        SqlDataAdapter mydataAdp = new SqlDataAdapter(comm);
        DataSet mydataset = new DataSet();
        mydataAdp.Fill(mydataset);
        DropDownList2.DataSource = mydataset;
        DropDownList2.DataTextField = "Sub_Category_Name";
        DropDownList2.DataValueField = "Sub_Category_Id";

        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "--select---");
        conn.Close();

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}