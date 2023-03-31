<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hotel_Profile.aspx.cs" Inherits="_Default" %>

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
                <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> Hotel Profile Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
					<div class="form_description">
			
		                &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
			<ul >
			
					<li id="li_1" >
		<label class="description" for="element_1">Hotel Name </label>
		<div>
			
		    <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required ></asp:TextBox>
            
		</div> 
		</li>			<li id="li_3" >
		 
		
	
		
		
		
	
		<label class="description" for="element_9">Address </label>
		</li>
                    <li id="li_3" >
		 
		
	
		
		
		
	
		<div>
			<asp:TextBox ID="TextBox2" runat="server" class="element text large"  required></asp:TextBox>
			
			<label for="element_9_1">Street Address</label>
		</div>
	
		
	
		<div class="left">
			 <asp:TextBox ID="TextBox3" runat="server" class="element text medium"  required></asp:TextBox>
			<label for="element_9_3">City</label>
            <br />
         
		</div>
	
		<div class="right">
			
            <asp:TextBox ID="TextBox4" runat="server" class="element text medium"  required></asp:TextBox>
            <label for="element_9_4">State / Province / Region</label>&nbsp;
		</div>
	
		<div class="right">
			<asp:TextBox ID="TextBox5" runat="server" class="element text medium"  required></asp:TextBox>
            <label for="element_9_6">Country</label>
	</div> 
		</li>		<li id="li_10" >
				


		<label class="description" for="element_1">Hotel Phone Number </label>
		<div>
		<asp:TextBox 
                ID="TextBox6" runat="server" class="element text medium"  required></asp:TextBox>
&nbsp;</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Hotel Phone Number2 </label>
		<div>
			<asp:TextBox 
                ID="TextBox7" runat="server" class="element text medium"  required></asp:TextBox>
&nbsp;</div> 
		</li>		<li id="li_3" >
			

<label class="description" for="element_2">Hotel Fax Number </label>
		<div>
			<asp:TextBox 
                ID="TextBox8" runat="server" class="element text medium"  required></asp:TextBox>
&nbsp;</div> 
		</li>	
        
        <li id="li1" >
        <label class="description" for="element_2">Hotel Email Id </label>
		<div>
			<asp:TextBox 
                ID="TextBox9" runat="server" class="element text medium"  required></asp:TextBox>
&nbsp;<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="Invalid Email Id" 
                ForeColor="#CC0000" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div> 
		</li>
        

			</ul>
                    <p>
                        &nbsp;</p>
                    <ul >
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
                        </li>
			            <li>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Hotel_Id" 
                                DataSourceID="SqlDataSource1" Width="408px" BackColor="White" 
                                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                        ShowSelectButton="True" />
                                    <asp:BoundField DataField="Hotel_Id" HeaderText="Hotel_Id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Hotel_Id" />
                                    <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel_Name" 
                                        SortExpression="Hotel_Name" />
                                    <asp:BoundField DataField="Hotel_Address" HeaderText="Hotel_Address" 
                                        SortExpression="Hotel_Address" />
                                    <asp:BoundField DataField="Hotel_City" HeaderText="Hotel_City" 
                                        SortExpression="Hotel_City" />
                                    <asp:BoundField DataField="Hotel_State" HeaderText="Hotel_State" 
                                        SortExpression="Hotel_State" />
                                    <asp:BoundField DataField="Hotel_Country" HeaderText="Hotel_Country" 
                                        SortExpression="Hotel_Country" />
                                    <asp:BoundField DataField="Hotel_Phone1" HeaderText="Hotel_Phone1" 
                                        SortExpression="Hotel_Phone1" />
                                    <asp:BoundField DataField="Hotel_Phone2" HeaderText="Hotel_Phone2" 
                                        SortExpression="Hotel_Phone2" />
                                    <asp:BoundField DataField="Hotel_Fax" HeaderText="Hotel_Fax" InsertVisible="False"
                                        SortExpression="Hotel_Fax" />
                                    <asp:BoundField DataField="Hotel_EmailId" HeaderText="Hotel_EmailId" 
                                        SortExpression="Hotel_EmailId" />
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
                                DeleteCommand="DELETE FROM [Hotel_Profile_Details] WHERE [Hotel_Id] = @original_Hotel_Id AND (([Hotel_Name] = @original_Hotel_Name) OR ([Hotel_Name] IS NULL AND @original_Hotel_Name IS NULL)) AND (([Hotel_Address] = @original_Hotel_Address) OR ([Hotel_Address] IS NULL AND @original_Hotel_Address IS NULL)) AND (([Hotel_City] = @original_Hotel_City) OR ([Hotel_City] IS NULL AND @original_Hotel_City IS NULL)) AND (([Hotel_State] = @original_Hotel_State) OR ([Hotel_State] IS NULL AND @original_Hotel_State IS NULL)) AND (([Hotel_Country] = @original_Hotel_Country) OR ([Hotel_Country] IS NULL AND @original_Hotel_Country IS NULL)) AND (([Hotel_Phone1] = @original_Hotel_Phone1) OR ([Hotel_Phone1] IS NULL AND @original_Hotel_Phone1 IS NULL)) AND (([Hotel_Phone2] = @original_Hotel_Phone2) OR ([Hotel_Phone2] IS NULL AND @original_Hotel_Phone2 IS NULL)) AND (([Hotel_Fax] = @original_Hotel_Fax) OR ([Hotel_Fax] IS NULL AND @original_Hotel_Fax IS NULL)) AND (([Hotel_EmailId] = @original_Hotel_EmailId) OR ([Hotel_EmailId] IS NULL AND @original_Hotel_EmailId IS NULL))" 
                                InsertCommand="INSERT INTO [Hotel_Profile_Details] ([Hotel_Name], [Hotel_Address], [Hotel_City], [Hotel_State], [Hotel_Country], [Hotel_Phone1], [Hotel_Phone2], [Hotel_Fax], [Hotel_EmailId]) VALUES (@Hotel_Name, @Hotel_Address, @Hotel_City, @Hotel_State, @Hotel_Country, @Hotel_Phone1, @Hotel_Phone2, @Hotel_Fax, @Hotel_EmailId)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT * FROM [Hotel_Profile_Details]" 
                                UpdateCommand="UPDATE [Hotel_Profile_Details] SET [Hotel_Name] = @Hotel_Name, [Hotel_Address] = @Hotel_Address, [Hotel_City] = @Hotel_City, [Hotel_State] = @Hotel_State, [Hotel_Country] = @Hotel_Country, [Hotel_Phone1] = @Hotel_Phone1, [Hotel_Phone2] = @Hotel_Phone2, [Hotel_Fax] = @Hotel_Fax, [Hotel_EmailId] = @Hotel_EmailId WHERE [Hotel_Id] = @original_Hotel_Id AND (([Hotel_Name] = @original_Hotel_Name) OR ([Hotel_Name] IS NULL AND @original_Hotel_Name IS NULL)) AND (([Hotel_Address] = @original_Hotel_Address) OR ([Hotel_Address] IS NULL AND @original_Hotel_Address IS NULL)) AND (([Hotel_City] = @original_Hotel_City) OR ([Hotel_City] IS NULL AND @original_Hotel_City IS NULL)) AND (([Hotel_State] = @original_Hotel_State) OR ([Hotel_State] IS NULL AND @original_Hotel_State IS NULL)) AND (([Hotel_Country] = @original_Hotel_Country) OR ([Hotel_Country] IS NULL AND @original_Hotel_Country IS NULL)) AND (([Hotel_Phone1] = @original_Hotel_Phone1) OR ([Hotel_Phone1] IS NULL AND @original_Hotel_Phone1 IS NULL)) AND (([Hotel_Phone2] = @original_Hotel_Phone2) OR ([Hotel_Phone2] IS NULL AND @original_Hotel_Phone2 IS NULL)) AND (([Hotel_Fax] = @original_Hotel_Fax) OR ([Hotel_Fax] IS NULL AND @original_Hotel_Fax IS NULL)) AND (([Hotel_EmailId] = @original_Hotel_EmailId) OR ([Hotel_EmailId] IS NULL AND @original_Hotel_EmailId IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Hotel_Id" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Name" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Address" Type="String" />
                                    <asp:Parameter Name="original_Hotel_City" Type="String" />
                                    <asp:Parameter Name="original_Hotel_State" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Country" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Phone1" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Phone2" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Fax" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_EmailId" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Hotel_Name" Type="String" />
                                    <asp:Parameter Name="Hotel_Address" Type="String" />
                                    <asp:Parameter Name="Hotel_City" Type="String" />
                                    <asp:Parameter Name="Hotel_State" Type="String" />
                                    <asp:Parameter Name="Hotel_Country" Type="String" />
                                    <asp:Parameter Name="Hotel_Phone1" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_Phone2" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_Fax" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_EmailId" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Hotel_Name" Type="String" />
                                    <asp:Parameter Name="Hotel_Address" Type="String" />
                                    <asp:Parameter Name="Hotel_City" Type="String" />
                                    <asp:Parameter Name="Hotel_State" Type="String" />
                                    <asp:Parameter Name="Hotel_Country" Type="String" />
                                    <asp:Parameter Name="Hotel_Phone1" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_Phone2" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_Fax" Type="Decimal" />
                                    <asp:Parameter Name="Hotel_EmailId" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Id" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Name" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Address" Type="String" />
                                    <asp:Parameter Name="original_Hotel_City" Type="String" />
                                    <asp:Parameter Name="original_Hotel_State" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Country" Type="String" />
                                    <asp:Parameter Name="original_Hotel_Phone1" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Phone2" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_Fax" Type="Decimal" />
                                    <asp:Parameter Name="original_Hotel_EmailId" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
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



            </div> 











</asp:Content>



