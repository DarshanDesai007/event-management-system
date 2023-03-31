<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Package_Details.aspx.cs" Inherits="_Default" %>

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
</head>
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> Package Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		    <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_15">Package Name </label>
		<div>
			<asp:TextBox 
                ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
&nbsp;</div>
		</li>	
        
        
        <li id="li2" >
		<label class="description" for="element_15">Amount </label>
		<div>
			<asp:TextBox 
                ID="TextBox2" runat="server" class="element text medium"  required 
                ontextchanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;</div>
		</li>	
        	<li id="li_15" >
		<label class="description" for="element_15">Category </label>
		<div>
		<asp:DropDownList ID="DropDownList1" class="element select medium" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True"  required>
            </asp:DropDownList>
&nbsp;</div> 
		</li>		<li id="li1" >
		<label class="description" for="element_15">Sub_Category </label>
		<div>
		<asp:DropDownList ID="DropDownList2" class="element select medium" runat="server"  
                required AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
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
                    DataKeyNames="Package_Id" DataSourceID="SqlDataSource2" Width="427px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Package_Id" />
                        <asp:BoundField DataField="Package_Name" HeaderText="Package_Name" 
                            SortExpression="Package_Name" />
                        <asp:BoundField DataField="Package_Amount" HeaderText="Package_Amount" 
                            SortExpression="Package_Amount" />
                        <asp:BoundField DataField="Category_Id" HeaderText="Category_Id" 
                            SortExpression="Category_Id" />
                        <asp:BoundField DataField="Sub_Category_Id" HeaderText="Sub_Category_Id" 
                            SortExpression="Sub_Category_Id" />
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
                    DeleteCommand="DELETE FROM [Package_Master] WHERE [Package_Id] = @original_Package_Id AND (([Package_Name] = @original_Package_Name) OR ([Package_Name] IS NULL AND @original_Package_Name IS NULL)) AND (([Package_Amount] = @original_Package_Amount) OR ([Package_Amount] IS NULL AND @original_Package_Amount IS NULL)) AND (([Category_Id] = @original_Category_Id) OR ([Category_Id] IS NULL AND @original_Category_Id IS NULL)) AND (([Sub_Category_Id] = @original_Sub_Category_Id) OR ([Sub_Category_Id] IS NULL AND @original_Sub_Category_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Package_Master] ([Package_Name], [Package_Amount], [Category_Id], [Sub_Category_Id]) VALUES (@Package_Name, @Package_Amount, @Category_Id, @Sub_Category_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Package_Master]" 
                    UpdateCommand="UPDATE [Package_Master] SET [Package_Name] = @Package_Name, [Package_Amount] = @Package_Amount, [Category_Id] = @Category_Id, [Sub_Category_Id] = @Sub_Category_Id WHERE [Package_Id] = @original_Package_Id AND (([Package_Name] = @original_Package_Name) OR ([Package_Name] IS NULL AND @original_Package_Name IS NULL)) AND (([Package_Amount] = @original_Package_Amount) OR ([Package_Amount] IS NULL AND @original_Package_Amount IS NULL)) AND (([Category_Id] = @original_Category_Id) OR ([Category_Id] IS NULL AND @original_Category_Id IS NULL)) AND (([Sub_Category_Id] = @original_Sub_Category_Id) OR ([Sub_Category_Id] IS NULL AND @original_Sub_Category_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Package_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Package_Name" Type="String" />
                        <asp:Parameter Name="original_Package_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Sub_Category_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Package_Name" Type="String" />
                        <asp:Parameter Name="Package_Amount" Type="Decimal" />
                        <asp:Parameter Name="Category_Id" Type="Decimal" />
                        <asp:Parameter Name="Sub_Category_Id" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Package_Name" Type="String" />
                        <asp:Parameter Name="Package_Amount" Type="Decimal" />
                        <asp:Parameter Name="Category_Id" Type="Decimal" />
                        <asp:Parameter Name="Sub_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Package_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Package_Name" Type="String" />
                        <asp:Parameter Name="original_Package_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Category_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Sub_Category_Id" Type="Decimal" />
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

