<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Backend.aspx.cs" Inherits="TBSProject.Backend.Backend1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
         Back End Menu
    </title>
    <link href="../CSS/Master.css" rel="stylesheet" />
     
     </head>
<body>
    <form id="form1" runat="server">
         <h1 id="heading" class="auto-style1">Backend</h1>
        <div>
            <div class="nav"/>
<ul><li class="dropdown" ><a href="#" class="dropbtn">Connection</a>
   <div class="dropdown-content"/>
<a href="NewConnection.aspx">New Connection</a>
<a href="ModifyConnection.aspx">Modify Connection</a>
<a href="CancelConnection.aspx">Cancel Connection</a>
<a href="SearchConnection.aspx">Search Connection</a>     
   
</li>
<li><a href="Verification.aspx">Verification</a></li>
<li><a href="ChangedSIMNumber.aspx">Change SIMNumber</a></li>
   
<li><a href="ChangePassword.aspx">Change Password</a></li>
<li><a href="Notifications.aspx">Notifications</a></li>
<li><asp:Button ID="Button2" ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large"  runat="server" Text="Signout" OnClick="Sigout" /></li> 

</ul>
          
 </div>
 </form>
</body>
</html>
