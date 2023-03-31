<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sub_Category_Details.aspx.cs" Inherits="_Default" %>

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
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Sub Category Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		    <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Sub Category Name</label><div>
		         <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
		</div>
		</li>		<li id="li_15" >
		<label class="description" for="element_15">Category </label>
		<div>
		<asp:DropDownList ID="DropDownList1" class="element select medium" runat="server"  
                required onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;</div> 
		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
            <li id="li_13" >
		<div>
			</textarea><asp:TextBox 
                ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>
&nbsp;</div> 
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
            </li>
			<li>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sub_Category_Id" 
                    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="413px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Sub_Category_Id" HeaderText="Sub_Category_Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Sub_Category_Id" />
                        <asp:BoundField DataField="Sub_Category_Name" HeaderText="Sub_Category_Name" 
                            SortExpression="Sub_Category_Name" />
                        <asp:BoundField DataField="Sub_Category_Description" HeaderText="Sub_Category_Description" 
                            SortExpression="Sub_Category_Description" />
                        <asp:BoundField DataField="category_Id" HeaderText="category_Id" Visible="false"
                            SortExpression="category_Id" />
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
                    DeleteCommand="DELETE FROM [Sub_Category_Master] WHERE [Sub_Category_Id] = @original_Sub_Category_Id AND (([Sub_Category_Name] = @original_Sub_Category_Name) OR ([Sub_Category_Name] IS NULL AND @original_Sub_Category_Name IS NULL)) AND (([Sub_Category_Description] = @original_Sub_Category_Description) OR ([Sub_Category_Description] IS NULL AND @original_Sub_Category_Description IS NULL)) AND (([category_Id] = @original_category_Id) OR ([category_Id] IS NULL AND @original_category_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Sub_Category_Master] ([Sub_Category_Name], [Sub_Category_Description], [category_Id]) VALUES (@Sub_Category_Name, @Sub_Category_Description, @category_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Sub_Category_Master]" 
                    UpdateCommand="UPDATE [Sub_Category_Master] SET [Sub_Category_Name] = @Sub_Category_Name, [Sub_Category_Description] = @Sub_Category_Description, [category_Id] = @category_Id WHERE [Sub_Category_Id] = @original_Sub_Category_Id AND (([Sub_Category_Name] = @original_Sub_Category_Name) OR ([Sub_Category_Name] IS NULL AND @original_Sub_Category_Name IS NULL)) AND (([Sub_Category_Description] = @original_Sub_Category_Description) OR ([Sub_Category_Description] IS NULL AND @original_Sub_Category_Description IS NULL)) AND (([category_Id] = @original_category_Id) OR ([category_Id] IS NULL AND @original_category_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Sub_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Sub_Category_Name" Type="String" />
                        <asp:Parameter Name="original_Sub_Category_Description" Type="String" />
                        <asp:Parameter Name="original_category_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sub_Category_Name" Type="String" />
                        <asp:Parameter Name="Sub_Category_Description" Type="String" />
                        <asp:Parameter Name="category_Id" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sub_Category_Name" Type="String" />
                        <asp:Parameter Name="Sub_Category_Description" Type="String" />
                        <asp:Parameter Name="category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Sub_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Sub_Category_Name" Type="String" />
                        <asp:Parameter Name="original_Sub_Category_Description" Type="String" />
                        <asp:Parameter Name="original_category_Id" Type="Decimal" />
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

