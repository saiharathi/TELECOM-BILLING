﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Admin.aspx.cs" Inherits="TBSProject.Admin.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
   <title></title>
    <link href="../CSS/Master.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
     <h1 id="heading">Admin</h1>
        <div class="nav"/>

<ul>
<li class="dropdown" ><a href="#" class="dropbtn">Billing Plan</a>
 <div class="dropdown-content"/>
      <a href="CreateBillingPlan">Create Billing Plan</a>
      <a href="ModifyBillingPlan">Modify Billing Plan</a>
      <a href="RemoveBillingPlan">Remove Billing Plan</a>

	  </li>

<li class="dropdown" ><a href="#" class="dropbtn">User Mangement</a>
   <div class="dropdown-content"/>
      <a href="CreateUser">Create User</a>
      <a href="ModifyUser">Modify User</a>
      <a href="DeactivateUser">Deactivate User</a>
      
</li>
<li><a href="ChangePassword">Change Password</a></li>
<li><a href="Notifications">Notifications</a></li>
 <li><asp:Button ID="Button2" ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large"  runat="server" Text="Signout" OnClick="Sigout" /></li> 
</ul>
  
    
    </form>
</body>
</html>
