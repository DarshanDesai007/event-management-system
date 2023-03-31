<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Photos.aspx.cs" Inherits="_Default" %>

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
<body><h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Invitation Photos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		
		
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="3">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("Image", "{0}") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Image] FROM [Invitation_Card_Details]">
        </asp:SqlDataSource>
	
		
		
</div>
</body>
</html>

                </div>



            </div> 



</asp:Content>

