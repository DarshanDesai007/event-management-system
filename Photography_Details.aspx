<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Photography_Details.aspx.cs" Inherits="_Default" %>

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
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> PhotoGraphy Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		&nbsp;&nbsp;&nbsp;
			
		    <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					
		</li>		<li id="li_2" >
		<label class="description" for="element_2">PhotoGrapher Name</label><li id="li_2" >
		        
                <div>
			<asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox> 
		</div>
        <li id="li1" >
		<label class="description" for="element_2">Amount</label><li id="li2" >
		        
                <div>
			<asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
         <li id="li3" >
		<label class="description" for="element_2"> Date</label><li id="li4" >
		        
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataKeyNames="Photography_Id" DataSourceID="SqlDataSource1" 
                    Width="438px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="Photography_Id" HeaderText="Photography_Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Photography_Id" />
                        <asp:BoundField DataField="Photographer_Name" HeaderText="Photographer_Name" 
                            SortExpression="Photographer_Name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Delievery_Date" HeaderText="Delievery_Date" 
                            SortExpression="Delievery_Date" />
                        <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" 
                            SortExpression="Package_Id" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Photography_Details] WHERE [Photography_Id] = @original_Photography_Id AND (([Photographer_Name] = @original_Photographer_Name) OR ([Photographer_Name] IS NULL AND @original_Photographer_Name IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Delievery_Date] = @original_Delievery_Date) OR ([Delievery_Date] IS NULL AND @original_Delievery_Date IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))" 
                    InsertCommand="INSERT INTO [Photography_Details] ([Photographer_Name], [Amount], [Delievery_Date], [Package_Id]) VALUES (@Photographer_Name, @Amount, @Delievery_Date, @Package_Id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Photography_Details]" 
                    UpdateCommand="UPDATE [Photography_Details] SET [Photographer_Name] = @Photographer_Name, [Amount] = @Amount, [Delievery_Date] = @Delievery_Date, [Package_Id] = @Package_Id WHERE [Photography_Id] = @original_Photography_Id AND (([Photographer_Name] = @original_Photographer_Name) OR ([Photographer_Name] IS NULL AND @original_Photographer_Name IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Delievery_Date] = @original_Delievery_Date) OR ([Delievery_Date] IS NULL AND @original_Delievery_Date IS NULL)) AND (([Package_Id] = @original_Package_Id) OR ([Package_Id] IS NULL AND @original_Package_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Photography_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Photographer_Name" Type="String" />
                        <asp:Parameter Name="original_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Delievery_Date" Type="String" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Photographer_Name" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Delievery_Date" Type="String" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Photographer_Name" Type="String" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Delievery_Date" Type="String" />
                        <asp:Parameter Name="Package_Id" Type="String" />
                        <asp:Parameter Name="original_Photography_Id" Type="Decimal" />
                        <asp:Parameter Name="original_Photographer_Name" Type="String" />
                        <asp:Parameter Name="original_Amount" Type="Decimal" />
                        <asp:Parameter Name="original_Delievery_Date" Type="String" />
                        <asp:Parameter Name="original_Package_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </li>

                </div>



            </div> 













</asp:Content>

