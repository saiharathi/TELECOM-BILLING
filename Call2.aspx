<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Call2.aspx.cs" Inherits="TBSProject.Customer.Call2" %>

<html>
<head runat="server">
    <title></title>
 
    <link href="../CSS/Master.css" rel="stylesheet" />
   <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.2.min.js"></script>

    <link href="CSS/time.css" rel="stylesheet" />
  
    </head>
<body>

       
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
</ul>
 
	<div class="timer">
           
			<h1>Total seconds</h1>
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="YourConnectionId :"></asp:Label>

        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Visible="false"></asp:Label><br />
        <div>
            <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Text="MyNumber :"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Size="X-Large"  Visible="false" ></asp:Label>

            <asp:Label ID="Label8" runat="server" Text="------------------------->"></asp:Label>

            <asp:Label ID="Label7" runat="server"  Font-Size="X-Large" Text="Called Number  :"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Visible="false" ></asp:Label>

             <asp:Label ID="Label9" runat="server" Visible="false" Text="CallStatus"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Size="Large" Visible="false" ></asp:Label>
        </div>
      

			<!--<span class="time">time</span>-->
        </div>
        <div class="control">
         
             
            <form runat="server" >
              <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:UpdatePanel runat="server" id="UpdatePanel">
            <Triggers>
            <asp:AsyncPostBackTrigger controlid="Timer1"  />
            </Triggers>
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label">0:0:0</asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

       

                <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" ImageUrl="~/Images/call.png" Width="48px" OnClick="StartClick" />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/Images/End.png" Width="48px" OnClick="Stop_Click" />
          </form>

        </div> 
   

	
   
</body>

		</html>