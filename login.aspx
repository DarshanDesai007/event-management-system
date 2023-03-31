<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>::Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/o_l.css" />
        <link rel="stylesheet" type="text/css" href="css/style_l.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
        
               
				
            
            <section>				
                <div id="container_demo" >
                <center>
                <div id="h2">Login<span>@Party Organizing Portal</span></div>
               </center>
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                     <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <asp:TextBox ID="TextBox2" runat="server" type="password" required 
                                        TextMode="Password"></asp:TextBox>
                                    
                                </p>
                                <p>
                                <label class="description" for="element_15">Type</label>
		                            <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                                Don't Have An Account???<a href="Registration.aspx">Create Account</a>
                                
                                <p class="login button"> 
                                   <asp:Button ID="Button1" runat="server"  Text="Submit" onclick="Button1_Click" />
								</p>
                                
                            </form>
                        </div>

                       
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
</asp:Content>

