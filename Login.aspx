<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TBSProject.Login" %>

<!doctype html>


<html>
<head>
 <meta charset="utf-8">
 <title>Login Page</title>
    <link href="CSS/login.css" rel="stylesheet" />
 
</head>
<body>
 <div class="loginBox"/>
 <img src="Images/login.png" class="user"/>
 
 <h2>Login here</h2>
 <form runat="server">
 <p>UserName</p>
 <asp:TextBox ID="TextBox1" TextMode="Email" runat="server"></asp:TextBox>
<!--<input type="text" name="" id="TextBox1" placeholder="Enter Email">-->
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" ForeColor="Yellow" runat="server" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
     

 <p>Password</p>
     <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2"  ForeColor="Yellow" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
     <asp:Button ID="Button1" runat="server" Text="SignIn" OnClick="SignIn_Click"  />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/ForgotPassword.aspx" runat="server">Forgot Password</asp:HyperLink>

</form>
    
</body>
</html>