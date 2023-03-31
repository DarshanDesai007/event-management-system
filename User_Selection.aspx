<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Selection.aspx.cs" Inherits="_Default" %>

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
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Your Selection&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<h1><a>Untitled Form</a></h1>
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
		<div class="form_description">
			
		&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
			
		</div>						
		<ul >
			
					<li id="li_1" >
		
		<label class="description" for="element_1">Category</label>
		<div>
			
		    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
            </asp:DropDownList>
			
		</div> </li>
		
		<li id="li_13" >
		<label class="description" for="element_13">Sub Category </label>
                    <li id="li_13" >
		<div>
		 
		    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
            </asp:DropDownList>
		 
		    <br />
		 
		</div> </li></li>




		
		<li id="li3" >
		<label class="description" for="element_13">Hotel </label>
                    <li id="li4" >
		<div>
		 
		    <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" DataTextField="Hotel_Name" 
                DataValueField="Hotel_Name" 
                onselectedindexchanged="DropDownList6_SelectedIndexChanged">
            </asp:DropDownList>
		 
		    <br />
		 
		</div> </li></li>



     



        
        <li id="li6" >
		
		<label class="description" for="element_1">Categoring Type</label>
		<div>
			
		    <asp:DropDownList ID="DropDownList13" runat="server" 
                onselectedindexchanged="DropDownList13_SelectedIndexChanged">
            </asp:DropDownList>
			
		</div> </li>
		
		<li id="li7" >
		<label class="description" for="element_13">Enterinment </label>
                    <li id="li8" >
		<div>
		 
		    <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList6_SelectedIndexChanged">
            </asp:DropDownList>
		 
		    <br />
		 
		</div> </li></li>



        <li id="li9" >
		<div>
		    <strong>Invitation<br />
            </strong>
            <asp:DropDownList ID="DropDownList14" runat="server" 
                onselectedindexchanged="DropDownList14_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>

        <li id="li10" >
		<div>
		    <strong>Decoration<br />
            </strong>
           
            <asp:DropDownList ID="DropDownList15" runat="server" 
                onselectedindexchanged="DropDownList15_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>

        <li id="li11" >
		<div>
		    <strong>Photography<br />
            </strong>
           
            <asp:DropDownList ID="DropDownList16" runat="server" 
                onselectedindexchanged="DropDownList16_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
		

	
		</div> 
		</li>


		<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;</li>
			        <li>
                        <br />
                    </li>
			        <li>
                        <br />
                    </li>
			</ul>
		
</div>
</body>
</html>

                </div>



            </div> 














</asp:Content>

