<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Food_Item_Details.aspx.cs" Inherits="_Default" %>

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

        function saveForm_onclick() {

        }

// ]]>
    </script>
</head>
<body >
	<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Food Item Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
			
					<li id="li_1" >
		
		<label class="description" for="element_1">Food Item Name</label>
		<div>
			
            <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		
		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
                    <li id="li_13" >
		<div>
			<asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>
		 
		    <br />
		 
		</div> 

        <li id="li_15" >
		<div>
		    <strong>Food Category Name<br />
            </strong>
            <asp:DropDownList ID="DropDownList1" class="element select medium" 
                runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True"  required>
                <asp:ListItem Selected="True">Select Food</asp:ListItem>
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>

        <li id="li1" >
		<div>
		    <strong>Food SubCategory Name<br />
            </strong>
           
            <asp:DropDownList ID="DropDownList3" runat="server" 
                class="element select medium" AutoPostBack="True" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged"  required >
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
                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataKeyNames="Food_Item_Id" DataSourceID="SqlDataSource1" Width="408px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="Food_Item_Id" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Food_Item_Id" />
                                <asp:BoundField DataField="Food_Item_Name" HeaderText="Name" 
                                    SortExpression="Food_Item_Name" />
                                <asp:BoundField DataField="Food_Item_Description" HeaderText="Description" 
                                    SortExpression="Food_Item_Description" />
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
                            DeleteCommand="DELETE FROM [Food_Item_Details] WHERE [Food_Item_Id] = @original_Food_Item_Id AND (([Food_Item_Name] = @original_Food_Item_Name) OR ([Food_Item_Name] IS NULL AND @original_Food_Item_Name IS NULL)) AND (([Food_Item_Description] = @original_Food_Item_Description) OR ([Food_Item_Description] IS NULL AND @original_Food_Item_Description IS NULL)) AND (([Food_category_Id] = @original_Food_category_Id) OR ([Food_category_Id] IS NULL AND @original_Food_category_Id IS NULL)) AND (([Food_SubCategory_Id] = @original_Food_SubCategory_Id) OR ([Food_SubCategory_Id] IS NULL AND @original_Food_SubCategory_Id IS NULL))" 
                            InsertCommand="INSERT INTO [Food_Item_Details] ([Food_Item_Name], [Food_Item_Description], [Food_category_Id], [Food_SubCategory_Id]) VALUES (@Food_Item_Name, @Food_Item_Description, @Food_category_Id, @Food_SubCategory_Id)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Food_Item_Details]" 
                            UpdateCommand="UPDATE [Food_Item_Details] SET [Food_Item_Name] = @Food_Item_Name, [Food_Item_Description] = @Food_Item_Description, [Food_category_Id] = @Food_category_Id, [Food_SubCategory_Id] = @Food_SubCategory_Id WHERE [Food_Item_Id] = @original_Food_Item_Id AND (([Food_Item_Name] = @original_Food_Item_Name) OR ([Food_Item_Name] IS NULL AND @original_Food_Item_Name IS NULL)) AND (([Food_Item_Description] = @original_Food_Item_Description) OR ([Food_Item_Description] IS NULL AND @original_Food_Item_Description IS NULL)) AND (([Food_category_Id] = @original_Food_category_Id) OR ([Food_category_Id] IS NULL AND @original_Food_category_Id IS NULL)) AND (([Food_SubCategory_Id] = @original_Food_SubCategory_Id) OR ([Food_SubCategory_Id] IS NULL AND @original_Food_SubCategory_Id IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Food_Item_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Food_Item_Name" Type="String" />
                                <asp:Parameter Name="original_Food_Item_Description" Type="String" />
                                <asp:Parameter Name="original_Food_category_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Food_SubCategory_Id" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Food_Item_Name" Type="String" />
                                <asp:Parameter Name="Food_Item_Description" Type="String" />
                                <asp:Parameter Name="Food_category_Id" Type="Decimal" />
                                <asp:Parameter Name="Food_SubCategory_Id" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Food_Item_Name" Type="String" />
                                <asp:Parameter Name="Food_Item_Description" Type="String" />
                                <asp:Parameter Name="Food_category_Id" Type="Decimal" />
                                <asp:Parameter Name="Food_SubCategory_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Food_Item_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Food_Item_Name" Type="String" />
                                <asp:Parameter Name="original_Food_Item_Description" Type="String" />
                                <asp:Parameter Name="original_Food_category_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Food_SubCategory_Id" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </li>
			</ul>
		
</div>
</body>
</html>
                </div>



            </div> 












		
</asp:Content>
