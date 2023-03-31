<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Entrainment_Details.aspx.cs" Inherits="Default3" %>

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
    <li><a href="userSelectionDetails.aspx"><span>Selection Details</span></a></li>
    <li><a href="login.aspx"><span>LogOut</span></a></li>
    </ul>
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
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Entrainment Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		
			
		    <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Band Type</label><li id="li_2" >
		        
                <div>
			        <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="DJ ">DJ BAND</asp:ListItem>
                        <asp:ListItem Value="ROCK ">ROCK BAND</asp:ListItem>
                        <asp:ListItem Value="TRADITIONAL ">TRADITIONAL BAND</asp:ListItem>
                        
                    </asp:DropDownList>
		</div>

        <li id="li3" >
		<label class="description" for="element_2"> Date</label><li id="li4" >
		        
                <div>
			 <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
		</div>

        <li id="li1" >
		<label class="description" for="element_2">Singer Name</label><li id="li2" >
		        
                <div>
			<asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
         
             <li id="li5" >
		<label class="description" for="element_2">Amount</label><li id="li6" >
		        
                <div>
			<asp:TextBox ID="TextBox3" runat="server" class="element text medium"  required></asp:TextBox> 
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="Enterinment_Id" DataSourceID="SqlDataSource1" Width="421px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Enterinment_Id" HeaderText="Enterinment_Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Enterinment_Id" />
                        <asp:BoundField DataField="Band_Type" HeaderText="Band_Type" 
                            SortExpression="Band_Type" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Singer_Name" HeaderText="Singer_Name" 
                            SortExpression="Singer_Name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" 
                            SortExpression="Package_Id" />
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
                    DeleteCommand="DELETE FROM [Enterinment_Details] WHERE [Enterinment_Id] = @original_Enterinment_Id AND (([Band_Type] = @original_Band_Type) OR ([Band_Type] IS NULL AND @original_Band_Type IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Singer_Name] = @original_Singer_Name) OR ([Singer_Name] IS NULL AND @original_Singer_Name IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Enterinment_Details] ([Band_Type], [Date], [Singer_Name], [Amount], [Package_Id]) VALUES (@Band_Type, @Date, @Singer_Name, @Amount, @Package_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Enterinment_Details]" 
                    UpdateCommand="UPDATE [Enterinment_Details] SET [Band_Type] = @Band_Type, [Date] = @Date, [Singer_Name] = @Singer_Name, [Amount] = @Amount, [Package_Id] = @Package_Id WHERE [Enterinment_Id] = @original_Enterinment_Id AND (([Band_Type] = @original_Band_Type) OR ([Band_Type] IS NULL AND @original_Band_Type IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Singer_Name] = @original_Singer_Name) OR ([Singer_Name] IS NULL AND @original_Singer_Name IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Enterinment_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Band_Type" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Singer_Name" Type="String" />
                        <asp:Parameter Name="original_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Band_Type" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Singer_Name" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Band_Type" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Singer_Name" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                        <asp:Parameter Name="original_Enterinment_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Band_Type" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Singer_Name" Type="String" />
                        <asp:Parameter Name="original_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </li>

                </div>



            </div> 

















   


</asp:Content>

