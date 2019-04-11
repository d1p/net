<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addPeople.aspx.cs" Inherits="WebApplication1.addPeople" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Add People</title>
    <link rel="stylesheet" type="text/css" href="signup.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            	<!-- main -->
	<div class="main-w3layouts wrapper">
		
        <h1><b>Registration From</b></h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
                    <asp:Label ID="notice" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:TextBox ID="full_name" runat="server" class="text" type="text" name="full_name" placeholder="Full Name" required=""></asp:TextBox>
					<asp:TextBox ID="nid_number" runat="server" class="text"  type="text" name="nid_number" placeholder="NID Number" required=""></asp:TextBox>
                    <asp:TextBox ID="date_of_birth" runat="server" class="text"  type="text" name="date_of_birth" placeholder="Date Of Birth" required=""></asp:TextBox>
                    <asp:TextBox ID="gender" runat="server" class="text" type="text" name="gender" placeholder="Gender" required=""></asp:TextBox>
                    <asp:TextBox ID="blood_group" runat="server" class="text" type="text" name="blood_group" placeholder="Blood Group" required=""></asp:TextBox>
                    <asp:TextBox ID="present_address" runat="server" class="text" type="text" name="present_address" placeholder="Present Address" required=""></asp:TextBox>
                    <asp:TextBox ID="permanent_address" runat="server"  class="text" type="text" name="permanent_address" placeholder="Permanent Address" required=""></asp:TextBox>
					<asp:TextBox ID="country" runat="server"  class="text" type="text" name="country" placeholder="Country" required=""></asp:TextBox>
                    <asp:TextBox ID="nationality" runat="server"  class="text" type="text" name="nationality" placeholder="Nationality" required=""></asp:TextBox>
					<asp:TextBox ID="phone_number" runat="server" class="text"  type="text" name="phone_number" placeholder="Phone Number" required=""></asp:TextBox>
                    <asp:TextBox ID="email_address" runat="server" class="text email" type="email" name="email" placeholder="Email" required=""></asp:TextBox>
                    <asp:TextBox ID="occupation" runat="server"  class="text" type="text" name="occupation" placeholder="Occupation" required=""></asp:TextBox>
                    <asp:TextBox ID="fathers_name" runat="server" class="text" type="text" name="fathers_name" placeholder="Father's name" required=""></asp:TextBox>
                    <asp:TextBox ID="mothers_name" runat="server"  class="text" type="text" name="mothers_name" placeholder="Mother's name" required=""></asp:TextBox>
				    <asp:TextBox ID="crime" runat="server" class="text"  type="text" name="crime" placeholder="Crime" required=""></asp:TextBox>
                    <asp:TextBox ID="crime_dismiss" runat="server" class="text" type="text" name="crime_dismiss" placeholder="Crime Dismiss" required=""></asp:TextBox>
                    <asp:TextBox ID="character_color" runat="server" class="text" type="text" name="character_color" placeholder="Character Color" required=""></asp:TextBox>
                    
                    <div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>All information is true</span>
						</label>
						<div class="clear"> </div>
					</div>
                    <asp:Button ID="Button1" runat="server" type="submit" value="SUBMIT" Text="SUBMIT" OnClick="Button1_Click" />
					
				</form>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
        </div>
    </form>
</body>
</html>
