<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Untitled Form</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
    
</head>
<body >
<h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br /> Registration Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
			
					<li id="li_1" >
		<label class="description" for="element_1">First Name </label>
		<div>
			 <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Last Name </label>
		<div>
			 <asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		<li id="li_3" >
		<label class="description" for="element_3">User Name </label>
		<div>
			 <asp:TextBox ID="TextBox3" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		<li id="li_4" >
		<label class="description" for="element_4">Password </label>
		<div>
			 <asp:TextBox ID="TextBox4" runat="server" class="element text medium"  required 
                 TextMode="Password"></asp:TextBox>
		</div> 
		</li>		<li id="li_5" >
		<label class="description" for="element_5">Conform Password </label>
		<div>
			 <asp:TextBox ID="TextBox5" runat="server" class="element text medium"  required 
                 TextMode="Password"></asp:TextBox>
		     <br />
             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                 ErrorMessage="Password Not Match" ForeColor="#CC0000"></asp:CompareValidator>
		</div> 
        <br />
        </li>		<li id="li1" >
		<label class="description" for="element_5">Gender </label>
        </li>
                    <li id="li1" >
		<div>
        <Table><tr>
			<td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gen"  /><td>Male</td>
  
            </td>
            <td style="padding-left:25px;">              <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gen" 
                 /></td><td>Female</td>
            </tr></Table> 
		</div> 
        <br />
        </li>		<li id="li_9" >
		         <label class="description" for="element_5">Full Address </label>
		<div>
         <asp:TextBox ID="TextBox6" runat="server" class="element text large"  required></asp:TextBox>
			
			
		</div>
	
		
	
		<div class="left">
			 <asp:TextBox ID="TextBox7" runat="server" class="element text large"  required></asp:TextBox>
			<label for="element_9_3">Country</label>
		</div>
	
		<div class="right">
			 <asp:TextBox ID="TextBox8" runat="server" class="element text large"  required></asp:TextBox>
			<label for="element_9_4">State / Province / Region</label>
		</div>
	<div class="left">
			 <asp:TextBox ID="TextBox9" runat="server" class="element text large"  required></asp:TextBox>
			<label for="element_9_3">City</label>
		</div>
		
       	<li id="li_7" >
		<label class="description" for="element_7">Number </label>
		<div>
			 <asp:TextBox ID="TextBox10" runat="server" class="element text medium"  required></asp:TextBox>

        <label class="description" for="element_7">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ControlToValidate="TextBox10" ErrorMessage="Invalid Number" ForeColor="#CC0000" 
                 ValidationExpression="^\+?[0-9-]+$"></asp:RegularExpressionValidator>
             </label>


		</div> 
        <br />
		</li>		
        <li id="li_8" >
		<label class="description" for="element_8">Email </label>
		<div>
			 <asp:TextBox ID="TextBox11" runat="server" class="element text medium"  required></asp:TextBox>
		<label class="description" for="element_8">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                 ControlToValidate="TextBox11" ErrorMessage="Invalid Email" ForeColor="#CC0000" 
                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </label>
		</div> 
		
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				<asp:Button ID="Button1" runat="server"  Text="Submit" onclick="Button1_Click" />
		                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
		</li>
			        <li>
                        <br />
                    </li>
			</ul>
		</form>	
		<div id="footer">
			
		</div>
	</div>
	<img id="bottom" src="bottom.png" alt="">
	</body>
</html>


</asp:Content>
