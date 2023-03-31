<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Photo_Gallery.aspx.cs" Inherits="_Default" %>

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
    
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function saveForm_onclick() {

        }

// ]]>
    </script>
</head>
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> Photo Gallery Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
			
					
		</li>		
		
		
        <li id="li_13" >
		<label class="description" for="element_13" Discription el class="description" for="element_13">Discription </label>
		<div>
           
			
		    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="element textarea medium" ></asp:TextBox>
			
		</div> 

			<li id="li_10" >
		<label class="description" for="element_10">Upload a File </label>
		<div>
			<asp:FileUpload 
                ID="FileUpload1" runat="server" class="element file" />
&nbsp;</div>  
		</li>		

	
		
		</li>
	
		
		
			<li id="li_3" >
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
            </li>
			</ul>
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


