<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Category_Details.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="content">


                <div class="Nav_side_menu">




             <br /><br /><br /><br /><br /><br /><br /><br />
                <div id='cssmenu'>

              <ul>
   <li class='active'><a href="Category_Details.aspx"><span>Category Details</span></a></li>
    <li> <a href="Sub_Category_Details.aspx"><span>SubCategory_Details</span></a></li>
    
    

    <li><a href="Catring_Details.aspx"><span>Catering Details</span></a></li>
    <li><a href="Decoration_Details.aspx"><span>Decoration Details</span></a></li>
    <li><a href="Photography_Details.aspx"><span>PhotoGraphy Details</span></a></li>
    <li><a href="InvitationCard_Details.aspx"><span>Invitation Card Details</span></a></li>
    <li><a href="Entrainment_Details.aspx"><span>Enterinment Details</span></a></li>
    <li><a href="Hotel_Profile.aspx"><span>Hotel Profile Details</span></a></li>
    <li><a href="Hotel_Photo.aspx"><span>Hotel Gallery Details</span></a></li>
    <li><a href="Food_Category_Details.aspx"><span>Food Category Details</span></a></li>
    <li><a href="Food_SubCategory_Details.aspx"><span>Food SubCategory Details</span></a></li>
    <li><a href="Food_Item_Details.aspx"><span>Food Item Details</span></a></li>
    <li><a href="userSelectionDetails.aspx"><span>Selection Details</span></a></li>
    <li><a href="login.aspx"><span>LogOut</span></a></li>
    </ul>
    </div>
              
                </div>
                <div class="body_content">
               <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html>
<head>
<script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>::Category Details</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function saveForm_onclick() {

        }

// ]]>
    </script>
</head>
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Category Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>

	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
								
			<ul >
			
					<li id="li_1" >
		                <asp:Label ID="Label1" runat="server"></asp:Label>
		</li>
                    <li id="li_1" >
		                <label class="description" for="element_1">Name </label>
		<div>
			
            <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Description</label>
		<div>
			
		    <br />

		    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium"></asp:TextBox>
		</div> 
		</li>		

		<li id="li_13" >
			    
				        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
		&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" type="reset" 
                            onclick="Button2_Click" />
		</li>
                    <li id="li_13" >
		</li>
	
		
		
			        <li>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataKeyNames="Category_Id" DataSourceID="SqlDataSource2" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            Width="403px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="Category_Id" HeaderText="Category_Id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Category_Id" />
                                <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" 
                                    SortExpression="Category_Name" />
                                <asp:BoundField DataField="Category_Description" HeaderText="Category_Description" 
                                    SortExpression="Category_Description" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Category_Master] WHERE [Category_Id] = @original_Category_Id AND (([Category_Name] = @original_Category_Name) OR ([Category_Name] IS NULL AND @original_Category_Name IS NULL)) AND (([Category_Description] = @original_Category_Description) OR ([Category_Description] IS NULL AND @original_Category_Description IS NULL))" 
                            InsertCommand="INSERT INTO [Category_Master] ([Category_Name], [Category_Description]) VALUES (@Category_Name, @Category_Description)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Category_Master]" 
                            UpdateCommand="UPDATE [Category_Master] SET [Category_Name] = @Category_Name, [Category_Description] = @Category_Description WHERE [Category_Id] = @original_Category_Id AND (([Category_Name] = @original_Category_Name) OR ([Category_Name] IS NULL AND @original_Category_Name IS NULL)) AND (([Category_Description] = @original_Category_Description) OR ([Category_Description] IS NULL AND @original_Category_Description IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Category_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Category_Name" Type="String" />
                                <asp:Parameter Name="original_Category_Description" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Category_Name" Type="String" />
                                <asp:Parameter Name="Category_Description" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Category_Name" Type="String" />
                                <asp:Parameter Name="Category_Description" Type="String" />
                                <asp:Parameter Name="original_Category_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Category_Name" Type="String" />
                                <asp:Parameter Name="original_Category_Description" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Category_Master]"></asp:SqlDataSource>
                    </li>
			</ul>
		</form>	
		<div id="footer">
			
		</div>
	</div>
	<img id="bottom" src="bottom.png" alt="">
	</body>
</html>
                </div>



           









</asp:Content>


