<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userSelectionDetails.aspx.cs" Inherits="_Default" %>

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
<div class="selection">
	<h1>
       
    <center>User Selection Details<br />
        <br />

	<center>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="User_Selection_Id" DataSourceID="SqlDataSource2" 
            Width="647px">
            <Columns>
                <asp:BoundField DataField="User_Selection_Id" HeaderText="User_Selection_Id"
                    SortExpression="User_Selection_Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Category_Id" HeaderText="Category_Id" 
                    SortExpression="Category_Id" />
                <asp:BoundField DataField="SubCategory_Id" HeaderText="SubCategory_Id" 
                    SortExpression="SubCategory_Id" />
                <asp:BoundField DataField="Hotel_Id" HeaderText="Hotel_Id" 
                    SortExpression="Hotel_Id" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Catering_Id" HeaderText="Catering_Id" 
                    SortExpression="Catering_Id" />
                <asp:BoundField DataField="Enterinment_Id" HeaderText="Enterinment_Id" 
                    SortExpression="Enterinment_Id" />
                <asp:BoundField DataField="Invitation_Id" HeaderText="Invitation_Id" 
                    SortExpression="Invitation_Id" />
                <asp:BoundField DataField="Decoration_Id" HeaderText="Decoration_Id" 
                    SortExpression="Decoration_Id" />
                <asp:BoundField DataField="Photography_Id" HeaderText="Photography_Id" 
                    SortExpression="Photography_Id" />
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
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [User_Selection_Details]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [User_Selection_Details]"></asp:SqlDataSource>

	</center>

</body>
</html>

                </div>



            </div> 










</asp:Content>

