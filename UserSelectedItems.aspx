<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserSelectedItems.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="content">


                <div class="Nav_side_menu">




             <br /><br /><br /><br /><br /><br /><br /><br />
                <div id='cssmenu'>

              <ul>
    <li class='active'><a href="Photo_Gallery.aspx"><span>Gallery</span></a></li>
    <li> <a href="User_Selection.aspx"><span>Event Selection</span></a></li>
    <li><a href="UserSelectedItems.aspx"><span>Selection Details</span></a></li>
    <li><a href="Photos.aspx"><span>Invitation Photos</span></a></li>
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
<body > <center><h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Your Selection&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="User_Selection_Id" 
        DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="User_Selection_Id" HeaderText="User_Selection_Id" Visible="false"
                InsertVisible="False" ReadOnly="True" SortExpression="User_Selection_Id" />
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
        SelectCommand="SELECT * FROM [User_Selection_Details] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="UserName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" Width="580px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="Package" HeaderText="Package" 
                    SortExpression="Package" />
                <asp:BoundField DataField="Foodname" HeaderText="Foodname" 
                    SortExpression="Foodname" />
                <asp:BoundField DataField="Sub_FoodName" HeaderText="Sub_FoodName" 
                    SortExpression="Sub_FoodName" />
                <asp:BoundField DataField="FoodItem" HeaderText="FoodItem" 
                    SortExpression="FoodItem" />
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
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [FoodSelect] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </center>
	
</body>
</html>
                </div>



            </div> 

















</asp:Content>

