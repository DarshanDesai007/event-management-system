<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Food_SubCategory_Details.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div id="content">


                
                <div class="Nav_side_menu">
           
              <div id='cssmenu'>

              <ul>
    <li class='active'><a href="Category_Details.aspx"><span>Category Details</span></a></li>
    <li> <a href="Sub_Category_Details.aspx"><span>SubCategory_Details</span></a></li>
    
    

    <li><a href="Catring_Details.aspx"><span>Catering Details</span></a></li>
    <li><a href="Decoration_Details.aspx"><span>Decoration Details</span></a></li>
    <li><a href="Photography_Details.aspx"><span>PhotoGraphy Details</span></a></li>
    <li><a href="InvitationCard_Details.aspx"><span>Invitation Card Details</span></a></li>
    <li><a href="Entertnment_Details.aspx"><span>Enterinment Details</span></a></li>
    <li><a href="Hotel_Profile.aspx"><span>Hotel Profile Details</span></a></li>
    <li><a href="Hotel_Photo.aspx"><span>Hotel Gallery Details</span></a></li>
    <li><a href="Food_Category_Details.aspx"><span>Food Category Details</span></a></li>
    <li><a href="Food_SubCategory_Details.aspx"><span>Food SubCategory Details</span></a></li>
    <li> <a href="Food_Item_Details.aspx"><span>Food Item Details</span></a></li>
    <li><a href="userSelectionDetails.aspx"><span>Selection Details</span></a></li>
    <li><a href="login.aspx"><span>LogOut</span></a></li>
    </ul>
    </div>
    </div>







          
                <div class="body_content">
                <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Untitled Form</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
    <script language="javascript" type="text/javascript">
// <![CDATA[

      

// ]]>
    </script>
</head>
<body ><h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Food Sub Category Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Food Sub Category Name</label><li id="li_2" >
		        
                <div>
			<asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
		
		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
		<div>
			            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>

            </div> 

<li id="li_15" >
		<div>
		    <strong>Food Category Name<br />
            </strong>
            <asp:DropDownList ID="DropDownList1" class="element select medium" 
                runat="server"  required 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>


					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
            </li>
			<li>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Food_SubCategory_Id" 
                    DataSourceID="SqlDataSource1" Width="426px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Food_SubCategory_Id" HeaderText="Food_SubCategory_Id" 
                            InsertVisible="False" ReadOnly="True" 
                            SortExpression="Food_SubCategory_Id" />
                        <asp:BoundField DataField="Food_SubCategory_Name" HeaderText="Food_SubCategory_Name" 
                            SortExpression="Food_SubCategory_Name" />
                        <asp:BoundField DataField="Food_SubCategory_Description" 
                            HeaderText="Food_SubCategory_Description" 
                            SortExpression="Food_SubCategory_Description" />
                        <asp:BoundField DataField="Food_Category_Id" HeaderText="Food_Category_Id" 
                            SortExpression="Food_Category_Id" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Food_SubCategory_Master] WHERE [Food_SubCategory_Id] = @original_Food_SubCategory_Id AND (([Food_SubCategory_Name] = @original_Food_SubCategory_Name) OR ([Food_SubCategory_Name] IS NULL AND @original_Food_SubCategory_Name IS NULL)) AND (([Food_SubCategory_Description] = @original_Food_SubCategory_Description) OR ([Food_SubCategory_Description] IS NULL AND @original_Food_SubCategory_Description IS NULL)) AND (([Food_Category_Id] = @original_Food_Category_Id) OR ([Food_Category_Id] IS NULL AND @original_Food_Category_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Food_SubCategory_Master] ([Food_SubCategory_Name], [Food_SubCategory_Description], [Food_Category_Id]) VALUES (@Food_SubCategory_Name, @Food_SubCategory_Description, @Food_Category_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Food_SubCategory_Master]" 
                    UpdateCommand="UPDATE [Food_SubCategory_Master] SET [Food_SubCategory_Name] = @Food_SubCategory_Name, [Food_SubCategory_Description] = @Food_SubCategory_Description, [Food_Category_Id] = @Food_Category_Id WHERE [Food_SubCategory_Id] = @original_Food_SubCategory_Id AND (([Food_SubCategory_Name] = @original_Food_SubCategory_Name) OR ([Food_SubCategory_Name] IS NULL AND @original_Food_SubCategory_Name IS NULL)) AND (([Food_SubCategory_Description] = @original_Food_SubCategory_Description) OR ([Food_SubCategory_Description] IS NULL AND @original_Food_SubCategory_Description IS NULL)) AND (([Food_Category_Id] = @original_Food_Category_Id) OR ([Food_Category_Id] IS NULL AND @original_Food_Category_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Food_SubCategory_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Food_SubCategory_Name" Type="String" />
                        <asp:Parameter Name="original_Food_SubCategory_Description" Type="String" />
                        <asp:Parameter Name="original_Food_Category_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Food_SubCategory_Name" Type="String" />
                        <asp:Parameter Name="Food_SubCategory_Description" Type="String" />
                        <asp:Parameter Name="Food_Category_Id" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Food_SubCategory_Name" Type="String" />
                        <asp:Parameter Name="Food_SubCategory_Description" Type="String" />
                        <asp:Parameter Name="Food_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Food_SubCategory_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Food_SubCategory_Name" Type="String" />
                        <asp:Parameter Name="original_Food_SubCategory_Description" Type="String" />
                        <asp:Parameter Name="original_Food_Category_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </li>
			</ul>
</form>
</div>
</body>
</html>
                </div>



            </div> 












</asp:Content>