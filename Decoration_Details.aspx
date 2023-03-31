<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Decoration_Details.aspx.cs" Inherits="_Default" %>

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
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Decoration Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
		<label class="description" for="element_2">Decoration Type</label><li id="li_2" >
		        
                <div>
			        <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Traditional Style</asp:ListItem>
                        <asp:ListItem>Eclectic Style</asp:ListItem>
                        <asp:ListItem>Contemporary Style</asp:ListItem>
                        <asp:ListItem>Mix Style</asp:ListItem>
                        <asp:ListItem>Modern Style</asp:ListItem>
                        <asp:ListItem>Elegant Wall Fashion Style</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
		</div>
        <li id="li1" >
		<label class="description" for="element_2">Amount</label><li id="li2" >
		        
                <div>
			<asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
         <li id="li3" >
		<label class="description" for="element_2">Duration</label><li id="li4" >
		        
                <div>
			<asp:TextBox ID="TextBox3" runat="server" class="element text medium"  required></asp:TextBox> 
		</div>
            
		
		

<li id="li_15" >
		<div>
		    <strong>Package Name<br />
            </strong>
            <asp:DropDownList ID="DropDownList1" class="element select medium" 
                runat="server" required 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
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
                </div>



            </div> 
















</asp:Content>

