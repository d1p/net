<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Criminal Detection SignUp </title>
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
		<h1>Authority SignUp</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
                    <asp:TextBox ID="Username" runat="server" class="text"  type="text" name="Username" placeholder="Username" required=""></asp:TextBox>
                    <asp:TextBox ID="email" runat="server" class="text email" type="email" name="email" placeholder="Email" required=""></asp:TextBox>
                    <asp:TextBox ID="password" runat="server" class="text" type="password" name="password" placeholder="Password" required=""></asp:TextBox>
                    <asp:TextBox ID="rpassword" runat="server"  class="text w3lpass" type="password" name="password" placeholder="Confirm Password" required=""></asp:TextBox>
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I'm permitted person of Criminal Detection</span>
						</label>
						<div class="clear"> </div>
					</div>
					<!--<input type="submit" value="SIGNUP">!-->
                    <asp:Button ID="Button1" type="submit" value="SIGNUP" runat="server" Text="SIGNUP" OnClick="Button1_Click" />
				</form>
                <asp:Label ID="notice" runat="server" ForeColor="Red"></asp:Label>
				<p>I have an Account? <a href="login.aspx"> Login Now!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p>© 2019 Sakir, Shawon, Dip </p>
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
