<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hotel_Photo.aspx.cs" Inherits="_Default" %>

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
<title>Feedback Form</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
</head>
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> Hotel Photo Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	
	<div id="form_container">
	
		
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
					<div class="form_description">
			
		                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
			<ul >
			


			<li id="li_10" >
		<label class="description" for="element_10">Upload a File </label>
		</li>
                <li id="li_10" >
		<div>
			<asp:FileUpload ID="FileUpload1" runat="server" class="element file"  required/>
	 
		</div>  
		</li>		

	
		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
		</li>
                <li id="li_13" >
		<div>
			<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>
		
		</div> 
		</li>

         <li id="li_15" >
		<div>
		    <strong>Hotel Name<br />
            </strong>
            <asp:DropDownList ID="DropDownList1" class="element select medium" 
                runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged"  required>
                <asp:ListItem Selected="True">Select Food</asp:ListItem>
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>
	
		
		
			<li id="li_3" >
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
                </li>
			</ul>
		            <p>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Hotel_Photo_Id" 
                            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="Hotel_Photo_Id" HeaderText="Hotel_Photo_Id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Hotel_Photo_Id" />
                                <asp:BoundField DataField="Hotel_Photo_Name" HeaderText="Hotel_Photo_Name" 
                                    SortExpression="Hotel_Photo_Name" />
                                <asp:BoundField DataField="Hotel_Photo_Description" HeaderText="Hotel_Photo_Description" 
                                    SortExpression="Hotel_Photo_Description" />
                                <asp:BoundField DataField="Hotel_Id" HeaderText="Hotel_Id" InsertVisible="false"
                                    SortExpression="Hotel_Id" />
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
                            DeleteCommand="DELETE FROM [Hotel_Photo_Details] WHERE [Hotel_Photo_Id] = @original_Hotel_Photo_Id AND (([Hotel_Photo_Name] = @original_Hotel_Photo_Name) OR ([Hotel_Photo_Name] IS NULL AND @original_Hotel_Photo_Name IS NULL)) AND (([Hotel_Photo_Description] = @original_Hotel_Photo_Description) OR ([Hotel_Photo_Description] IS NULL AND @original_Hotel_Photo_Description IS NULL)) AND (([Hotel_Id] = @original_Hotel_Id) OR ([Hotel_Id] IS NULL AND @original_Hotel_Id IS NULL))" 
                            InsertCommand="INSERT INTO [Hotel_Photo_Details] ([Hotel_Photo_Name], [Hotel_Photo_Description], [Hotel_Id]) VALUES (@Hotel_Photo_Name, @Hotel_Photo_Description, @Hotel_Id)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Hotel_Photo_Details]" 
                            UpdateCommand="UPDATE [Hotel_Photo_Details] SET [Hotel_Photo_Name] = @Hotel_Photo_Name, [Hotel_Photo_Description] = @Hotel_Photo_Description, [Hotel_Id] = @Hotel_Id WHERE [Hotel_Photo_Id] = @original_Hotel_Photo_Id AND (([Hotel_Photo_Name] = @original_Hotel_Photo_Name) OR ([Hotel_Photo_Name] IS NULL AND @original_Hotel_Photo_Name IS NULL)) AND (([Hotel_Photo_Description] = @original_Hotel_Photo_Description) OR ([Hotel_Photo_Description] IS NULL AND @original_Hotel_Photo_Description IS NULL)) AND (([Hotel_Id] = @original_Hotel_Id) OR ([Hotel_Id] IS NULL AND @original_Hotel_Id IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Hotel_Photo_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Hotel_Photo_Name" Type="String" />
                                <asp:Parameter Name="original_Hotel_Photo_Description" Type="String" />
                                <asp:Parameter Name="original_Hotel_Id" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Hotel_Photo_Name" Type="String" />
                                <asp:Parameter Name="Hotel_Photo_Description" Type="String" />
                                <asp:Parameter Name="Hotel_Id" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Hotel_Photo_Name" Type="String" />
                                <asp:Parameter Name="Hotel_Photo_Description" Type="String" />
                                <asp:Parameter Name="Hotel_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Hotel_Photo_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Hotel_Photo_Name" Type="String" />
                                <asp:Parameter Name="original_Hotel_Photo_Description" Type="String" />
                                <asp:Parameter Name="original_Hotel_Id" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </p>
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



