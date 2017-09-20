<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Finance.aspx.cs" Inherits="TBSProject.Finance.Finance1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Finance</title>
    <link href="../CSS/Master.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="heading">Finance</h1>
        <div>
            <div class="nav"/>
<ul><li class="dropdown" ><a href="#" class="dropbtn">Generate Bills</a>
   <div class="dropdown-content"/>
<a href="SingleUser.aspx">Single User</a>
<a href="AllUsers.aspx">All Users</a>
</li>

<li><a href="Notification.aspx ">Notifications</a></li>
    <li><a href="Password.aspx">Change Password</a></li>
 <li><asp:Button ID="Button2" ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large"  runat="server" Text="Signout" OnClick="Sigout" /></li> 

</ul>
           
</div>
    </form>
</body>
</html>