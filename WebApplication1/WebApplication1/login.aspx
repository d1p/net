<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Criminal Detection Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="login-page">
  <div class="form">
    <form class="login-form">
        <asp:TextBox ID="username" runat="server" type="text" placeholder="username"></asp:TextBox>
        <asp:TextBox ID="password" runat="server" type="password" placeholder="password"></asp:TextBox>
        
        <asp:Button ID="loginButton" class="btn-hover color-login" runat="server" Text="Login" OnClick="loginButton_Click1" />
        <asp:Label ID="notice" runat="server" ForeColor="#FF0066"></asp:Label>
        <p class="message">Not registered? <a href="signup.aspx">Create an account</a></p>
    </form>
  </div>
</div>
        </div>
    </form>
</body>
</html>
