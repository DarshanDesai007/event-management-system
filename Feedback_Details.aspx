<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback_Details.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


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
	&nbsp;&nbsp; &nbsp;&nbsp;<br />Your Feedback&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </h1>
    <br />
    </center><center>

	
	<img id="top" src="top.png" alt="">
	<div id="form_container">
	
		<form id="form_580670" class="appnitro" enctype="multipart/form-data" method="post" action="">
								
			<ul >
			
					<li id="li_1" >
		                <asp:Label ID="Label1" runat="server"></asp:Label>
		</li>
                    <li id="li_1" >
		                <label class="description" for="element_1">Email Id </label>
		<div>
			
            <asp:TextBox ID="TextBox1" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Subject </label>
		<div>
			
            <asp:TextBox ID="TextBox2" runat="server" class="element text medium"  required></asp:TextBox>
		</div> 
		</li>		

		<li id="li_13" >
		<label class="description" for="element_13">Discription </label>
		</li>
                    <li id="li_13" >
		<div>
			<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" class="element textarea medium"  required></asp:TextBox>
			 
		</div> 
		</li>
	
		
		
			<li id="li_3" >
					<li class="buttons">
			    <input type="hidden" name="form_id" value="580670" />
			    
				        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" />
                    </li>
			        <li>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            DataKeyNames="Feedback_Id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="Feedback_Id" HeaderText="Id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Feedback_Id" />
                                <asp:BoundField DataField="Email_Id" HeaderText="Email" 
                                    SortExpression="Email_Id" />
                                <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                    SortExpression="Subject" />
                                <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                                    SortExpression="Feedback" />
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
                            DeleteCommand="DELETE FROM [Feedback_Details] WHERE [Feedback_Id] = @original_Feedback_Id AND (([Email_Id] = @original_Email_Id) OR ([Email_Id] IS NULL AND @original_Email_Id IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL))" 
                            InsertCommand="INSERT INTO [Feedback_Details] ([Email_Id], [Subject], [Feedback]) VALUES (@Email_Id, @Subject, @Feedback)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Feedback_Details]" 
                            UpdateCommand="UPDATE [Feedback_Details] SET [Email_Id] = @Email_Id, [Subject] = @Subject, [Feedback] = @Feedback WHERE [Feedback_Id] = @original_Feedback_Id AND (([Email_Id] = @original_Email_Id) OR ([Email_Id] IS NULL AND @original_Email_Id IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Feedback_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Email_Id" Type="String" />
                                <asp:Parameter Name="original_Subject" Type="String" />
                                <asp:Parameter Name="original_Feedback" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Email_Id" Type="String" />
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="Feedback" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Email_Id" Type="String" />
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="Feedback" Type="String" />
                                <asp:Parameter Name="original_Feedback_Id" Type="Decimal" />
                                <asp:Parameter Name="original_Email_Id" Type="String" />
                                <asp:Parameter Name="original_Subject" Type="String" />
                                <asp:Parameter Name="original_Feedback" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
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

