<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Catring_Details.aspx.cs" Inherits="_Default" %>

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
    <li><a href="Entertnment_Details.aspx"><span>Enterinment Details</span></a></li>
    <li><a href="Hotel_Profile.aspx"><span>Hotel Profile Details</span></a></li>
    <li><a href="Hotel_Photo.aspx"><span>Hotel Gallery Details</span></a></li>
    <li><a href="Food_Category_Details.aspx"><span>Food Category Details</span></a></li>
    <li><a href="Food_SubCategory_Details.aspx"><span>Food SubCategory Details</span></a></li>
    <li> <a href="Food_Item_Details.aspx"><span>Food Item Details</span></a></li>
    <li><a href="userSelectionDetails.aspx"><span>Selection Details</span></a></li><br /><br />
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
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Catering Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                ID="LinkButton1" runat="server" PostBackUrl="~/Admin_Page.aspx">Back</asp:LinkButton>
			
		    <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Catering Name</label><li id="li_2" >
		        
                <div>
			<asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
        <li id="li1" >
		<label class="description" for="element_2">Number Of Seats</label><li id="li2" >
		        
                <div>
			<asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
         <li id="li3" >
		<label class="description" for="element_2">Catering Date</label><li id="li4" >
		        
                <div>
			 <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
		</div>
            
		
		

<li id="li_15" >
		<div>
		    <strong>Package Name<br />
            </strong>
            <asp:DropDownList ID="DropDownList1" class="element select medium" 
                runat="server" required >
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>


					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server"  Text="Submit" 
                            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear"  name="reset" 
                            onclick="Button2_Click"/></li>

            <li>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="Catering_Id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Catering_Id" HeaderText="Catering_Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Catering_Id">
                        </asp:BoundField>
                        <asp:BoundField DataField="Catering_Name" HeaderText="Catering_Name" 
                            SortExpression="Catering_Name" />
                        <asp:BoundField DataField="NumberOfSeats" HeaderText="NumberOfSeats" 
                            SortExpression="NumberOfSeats" />
                        <asp:BoundField DataField="Function_Date" HeaderText="Function_Date" 
                            SortExpression="Function_Date" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Catering_Details] WHERE [Catering_Id] = @original_Catering_Id AND (([Catering_Name] = @original_Catering_Name) OR ([Catering_Name] IS NULL AND @original_Catering_Name IS NULL)) AND (([NumberOfSeats] = @original_NumberOfSeats) OR ([NumberOfSeats] IS NULL AND @original_NumberOfSeats IS NULL)) AND (([Function_Date] = @original_Function_Date) OR ([Function_Date] IS NULL AND @original_Function_Date IS NULL))" 
                    InsertCommand="INSERT INTO [Catering_Details] ([Catering_Name], [NumberOfSeats], [Function_Date]) VALUES (@Catering_Name, @NumberOfSeats, @Function_Date)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Catering_Id], [Catering_Name], [NumberOfSeats], [Function_Date] FROM [Catering_Details]" 
                    UpdateCommand="UPDATE [Catering_Details] SET [Catering_Name] = @Catering_Name, [NumberOfSeats] = @NumberOfSeats, [Function_Date] = @Function_Date WHERE [Catering_Id] = @original_Catering_Id AND (([Catering_Name] = @original_Catering_Name) OR ([Catering_Name] IS NULL AND @original_Catering_Name IS NULL)) AND (([NumberOfSeats] = @original_NumberOfSeats) OR ([NumberOfSeats] IS NULL AND @original_NumberOfSeats IS NULL)) AND (([Function_Date] = @original_Function_Date) OR ([Function_Date] IS NULL AND @original_Function_Date IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Catering_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Catering_Name" Type="String" />
                        <asp:Parameter Name="original_NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="original_Function_Date" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Catering_Name" Type="String" />
                        <asp:Parameter Name="NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="Function_Date" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Catering_Name" Type="String" />
                        <asp:Parameter Name="NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="Function_Date" Type="String" />
                        <asp:Parameter Name="original_Catering_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Catering_Name" Type="String" />
                        <asp:Parameter Name="original_NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="original_Function_Date" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Category_Master] WHERE [Category_Id] = @original_Category_Id AND (([Category_Name] = @original_Category_Name) OR ([Category_Name] IS NULL AND @original_Category_Name IS NULL)) AND (([Category_Description] = @original_Category_Description) OR ([Category_Description] IS NULL AND @original_Category_Description IS NULL))" 
                    InsertCommand="INSERT INTO [Category_Master] ([Category_Name], [Category_Description]) VALUES (@Category_Name, @Category_Description)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Category_Name], [Category_Description], [Category_Id] FROM [Category_Master]" 
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
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Catering_Details] WHERE [Catering_Id] = @original_Catering_Id AND (([Catering_Name] = @original_Catering_Name) OR ([Catering_Name] IS NULL AND @original_Catering_Name IS NULL)) AND (([NumberOfSeats] = @original_NumberOfSeats) OR ([NumberOfSeats] IS NULL AND @original_NumberOfSeats IS NULL)) AND (([Function_Date] = @original_Function_Date) OR ([Function_Date] IS NULL AND @original_Function_Date IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Catering_Details] ([Catering_Name], [NumberOfSeats], [Function_Date], [Package_Id]) VALUES (@Catering_Name, @NumberOfSeats, @Function_Date, @Package_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Catering_Details]" 
                    UpdateCommand="UPDATE [Catering_Details] SET [Catering_Name] = @Catering_Name, [NumberOfSeats] = @NumberOfSeats, [Function_Date] = @Function_Date, [Package_Id] = @Package_Id WHERE [Catering_Id] = @original_Catering_Id AND (([Catering_Name] = @original_Catering_Name) OR ([Catering_Name] IS NULL AND @original_Catering_Name IS NULL)) AND (([NumberOfSeats] = @original_NumberOfSeats) OR ([NumberOfSeats] IS NULL AND @original_NumberOfSeats IS NULL)) AND (([Function_Date] = @original_Function_Date) OR ([Function_Date] IS NULL AND @original_Function_Date IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Catering_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Catering_Name" Type="String" />
                        <asp:Parameter Name="original_NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="original_Function_Date" Type="String" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Catering_Name" Type="String" />
                        <asp:Parameter Name="NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="Function_Date" Type="String" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Catering_Name" Type="String" />
                        <asp:Parameter Name="NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="Function_Date" Type="String" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                        <asp:Parameter Name="original_Catering_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Catering_Name" Type="String" />
                        <asp:Parameter Name="original_NumberOfSeats" Type="Decimal" />
                        <asp:Parameter Name="original_Function_Date" Type="String" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </li>
                </div>



            </div> 
    
    
   


</asp:Content>

