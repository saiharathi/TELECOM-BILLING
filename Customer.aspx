<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="TBSProject.Customer.Customer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="../CSS/Master.css" rel="stylesheet" />
    
 
  </head>
<body>
  
   <form id="form1" runat="server">
        <h1 id="heading">Customer</h1>

        <div>
            <div class="nav"/>

<ul>
<li class="dropdown"><a href="#" class="dropbtn">Profile</a>
 <div class="dropdown-content"/>
      <a href="ViewProfile.aspx" onclick="">View Profile</a>
      <a href="ChangePassword.aspx">Change Password</a>
	  </li>
   
<li class="dropdown" ><a href="#" class="dropbtn">My Bill</a>
   <div class="dropdown-content"/>
    <a href="MyBill.aspx">View Bill</a>
    <a href="BillPayment.aspx">Payment</a>
</li>
<li><a href="ModifyBill.aspx">ModifyBillPlan</a></li>
<li><a href="UnBilledAmount.aspx">UnbilledAmount</a></li>
<li><a href="Call.aspx">Call</a></li>
<li><a href="Notifications.aspx">Notifications</a></li>
<li><asp:Button ID="Button1" ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large"  runat="server" Text="Signout" OnClick="Sigout" /></li>
   
</ul>

           
 </div>
    </form>
</body>
</html>
