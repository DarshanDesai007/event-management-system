<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Contact Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
 <div class="main">
<section id="content">
    	<div class="container_24">
            <div class="grid_23 prefix_1">
            	<div class="block-1">
                	<div>
                    	<div>
                        	
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grid_6 prefix_1" style="color:white;">
            	<h3 class="h3 top-6">Contact info:</h3>
                <dl class="adr">
                    <dt class="clr-1"><strong>Party Organization</strong></dt>
                    <dt class="clr-1"><strong>&nbsp;Portal:</strong></dt>
                    <dd class="top-13">8901 Marmora Road, Glasgow, D04 89GR</dd>
                    <dd class="top-13"><span>Telephone:</span><strong>+1 959 603 6035</strong></dd>
                    <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
                    <dd class="p2"><span>Email:</span><a href="#" class="link">kjlmona19@gmail.com</a></dd>
                    <dd>9863 Mill Road, Cambridge, MG09 99HT</dd>
                    <dd class="top-13"><span>Telephone:</span><strong>+1 959 603 6035</strong></dd>
                    <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
                    <dd><span>Email:</span><a href="#" class="link">kjlmona19@gmail.com</a></dd>
                </dl> 
            </div>
            <div class="grid_16 prefix_1">
            	<h2 class="h2 top-3">Contact Us</h2>
                <form id="form" method="post" >
                    <fieldset>
                      <label><strong>Full name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" 
                            runat="server"></asp:TextBox>
                        <strong class="clear"></strong></label><br />
                      <label><strong>Email:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox2" runat="server" Height="16px" Width="151px"></asp:TextBox>
                        <strong class="clear"></strong></label><br />
                      <label><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message(Write Your Email-Id In Msg):</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" 
                            runat="server" TextMode="MultiLine"></asp:TextBox>
                        <strong class="clear"></strong></label><br />
                      <div class="btns">
                          <asp:Button ID="Button1" 
                              runat="server" Text="Send" onclick="Button1_Click" />
                          &nbsp;&nbsp&nbsp;&nbsp<input type="reset" value="Clear"></div>
                    </fieldset>  
                  </form> 
            </div>
            <div class="clear"></div>
        </div>
    </section> 
    </div>
</asp:Content>

