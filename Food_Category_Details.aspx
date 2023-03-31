<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Food_Category_Details.aspx.cs" Inherits="Default2" %>

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
<body>
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Food Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
		<label class="description" for="element_2">Food Name</label><li id="li_2" >
		        
                <div>
			<asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
		
		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
		<div>
			            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>

&nbsp;</div> 
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
                    DataKeyNames="Food_Category_Id" DataSourceID="SqlDataSource1" Width="380px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Food_Category_Id" HeaderText="Food_Category_Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Food_Category_Id" />
                        <asp:BoundField DataField="Food_Category_Name" HeaderText="Food_Category_Name" 
                            SortExpression="Food_Category_Name" />
                        <asp:BoundField DataField="Food_Category_Description" HeaderText="Food_Category_Description" 
                            SortExpression="Food_Category_Description" />
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
                    DeleteCommand="DELETE FROM [Food_Category_Master] WHERE [Food_Category_Id] = @original_Food_Category_Id AND (([Food_Category_Name] = @original_Food_Category_Name) OR ([Food_Category_Name] IS NULL AND @original_Food_Category_Name IS NULL)) AND (([Food_Category_Description] = @original_Food_Category_Description) OR ([Food_Category_Description] IS NULL AND @original_Food_Category_Description IS NULL))" 
                    InsertCommand="INSERT INTO [Food_Category_Master] ([Food_Category_Name], [Food_Category_Description]) VALUES (@Food_Category_Name, @Food_Category_Description)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Food_Category_Master]" 
                    UpdateCommand="UPDATE [Food_Category_Master] SET [Food_Category_Name] = @Food_Category_Name, [Food_Category_Description] = @Food_Category_Description WHERE [Food_Category_Id] = @original_Food_Category_Id AND (([Food_Category_Name] = @original_Food_Category_Name) OR ([Food_Category_Name] IS NULL AND @original_Food_Category_Name IS NULL)) AND (([Food_Category_Description] = @original_Food_Category_Description) OR ([Food_Category_Description] IS NULL AND @original_Food_Category_Description IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Food_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Food_Category_Name" Type="String" />
                        <asp:Parameter Name="original_Food_Category_Description" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Food_Category_Name" Type="String" />
                        <asp:Parameter Name="Food_Category_Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Food_Category_Name" Type="String" />
                        <asp:Parameter Name="Food_Category_Description" Type="String" />
                        <asp:Parameter Name="original_Food_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Food_Category_Name" Type="String" />
                        <asp:Parameter Name="original_Food_Category_Description" Type="String" />
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


