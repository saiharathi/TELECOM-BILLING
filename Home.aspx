<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TBSProject.Home" %>

<!DOCTYPE html>
<html>
<head lang="en" runat="server">
<meta charset="UTF-8">
  <title>TBS HOME</title>
 
    <link href="CSS/TBSHome.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 221px;
            height: 33px;
            float: right;
            margin-left: 83px;
        }
    </style>
    <script type="text/javascript">
        function login() {
            window.location.href = "login.aspx";
        }
    </script>
</head>
<body runat="server">
<nav runat="server"> 
<a id="Home" href="#HomeSection"><i>HOME</i></a>
<a id="Plans" href="#PlansSection"><i>PLANS</i></a>
<a id="Services" href="#ServicesSection"><i>SERVICES</i></a>
<a id="Contactus" href="#ContactusSection"><i>CONTACT US</i></a></nav>

<div id="HomeSection" class="sect sectOne">
    
<div class="typewriter">
     <div class="set sectOne">

</div>
<br/><br/>
<button runat="server" style="border-style:  none; border-color: inherit; border-width: medium; color: yellow; font-size:x-large; font-style:italic; background-color: Transparent; font-weight:100" onclick="login()" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN</button> 
     <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  <h1><i>Welcome To Telecom Billing Systems</i></h1><br/><br/><br/><br/><br/><br/>
  
     
     
</div>
<video autoplay loop muted class="video_selector" src="Video/a.mp4" controls="controls" />
</div>


<div id="PlansSection" class="subSection">
<div><br/><br/><br/>
<h1>PLANS</h1>
    <div>
        <form runat="server">

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="PlanID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlanNameLabel" runat="server" Text='<%# Eval("PlanName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfLocalMinuteLabel" runat="server" Text='<%# Eval("CostOfLocalMinute") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LocalFreeMinutesLabel" runat="server" Text='<%# Eval("LocalFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="STDFreeMinutesLabel" runat="server" Text='<%# Eval("STDFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfSTDMinuteLabel" runat="server" Text='<%# Eval("CostOfSTDMinute") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="PlanIDLabel1" runat="server" Text='<%# Eval("PlanID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PlanNameTextBox" runat="server" Text='<%# Bind("PlanName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CostOfLocalMinuteTextBox" runat="server" Text='<%# Bind("CostOfLocalMinute") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LocalFreeMinutesTextBox" runat="server" Text='<%# Bind("LocalFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="STDFreeMinutesTextBox" runat="server" Text='<%# Bind("STDFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CostOfSTDMinuteTextBox" runat="server" Text='<%# Bind("CostOfSTDMinute") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="PlanNameTextBox" runat="server" Text='<%# Bind("PlanName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CostOfLocalMinuteTextBox" runat="server" Text='<%# Bind("CostOfLocalMinute") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LocalFreeMinutesTextBox" runat="server" Text='<%# Bind("LocalFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="STDFreeMinutesTextBox" runat="server" Text='<%# Bind("STDFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CostOfSTDMinuteTextBox" runat="server" Text='<%# Bind("CostOfSTDMinute") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlanNameLabel" runat="server" Text='<%# Eval("PlanName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfLocalMinuteLabel" runat="server" Text='<%# Eval("CostOfLocalMinute") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LocalFreeMinutesLabel" runat="server" Text='<%# Eval("LocalFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="STDFreeMinutesLabel" runat="server" Text='<%# Eval("STDFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfSTDMinuteLabel" runat="server" Text='<%# Eval("CostOfSTDMinute") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">PlanID</th>
                                        <th runat="server">PlanName</th>
                                        <th runat="server">CostOfLocalMinute</th>
                                        <th runat="server">LocalFreeMinutes</th>
                                        <th runat="server">STDFreeMinutes</th>
                                        <th runat="server">CostOfSTDMinute</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlanNameLabel" runat="server" Text='<%# Eval("PlanName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfLocalMinuteLabel" runat="server" Text='<%# Eval("CostOfLocalMinute") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LocalFreeMinutesLabel" runat="server" Text='<%# Eval("LocalFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="STDFreeMinutesLabel" runat="server" Text='<%# Eval("STDFreeMinutes") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CostOfSTDMinuteLabel" runat="server" Text='<%# Eval("CostOfSTDMinute") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString29 %>" SelectCommand="SELECT [PlanID], [PlanName], [CostOfLocalMinute], [LocalFreeMinutes], [STDFreeMinutes], [CostOfSTDMinute] FROM [BillingPlanMaster]"></asp:SqlDataSource>

        </form>
     </div>
</div>
</div>


<div id="ServicesSection" class="sect sectTwo">
<div><br/><br/><br/>
<h1>SERVICES</h1>
    <div id="services">
        <ul  >

        <li>Mobile Services</li>
         <li>Landline</li>
         <li>BroadBand</li>
         <li>Business Oppurtinities</li>
    </ul>
    </div>
    

</div>
</div>


<div id= "ContactusSection" class="lastSection">
<div><br/><br/><br/>
<h1>CONTACT US</h1>
    <div id="Contact">
       <ul>
           <li>Reach Us</li>
           <li>Site Map</li>
           <li>FeedBack</li>
       </ul>
    </div>
</div>
</div>

<footer class="row-footer">
        <div class="container">
            <div class="row">             
                <div class="col-xs-6 col-sm-3">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a id="Home"      href="#HomeSection">Home</a></li>
                        <li><a id="Plans" href="#PlansSection">Plans</a></li>
                        <li><a id="Services"  href="#ServicesSection">Services</a></li>
                        <li><a id="Contactus"  href="#ContactusSection">Contact us</a></li>
					
                    </ul>
                </div>
               
                <div class="col-xs-12">
				<p style="padding:10px;"></p>
                <p align="center">&copy; DXC 2017</p>
                </div>
            </div>
        </div>
    </footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/app.js"></script>
</body>
</html>
