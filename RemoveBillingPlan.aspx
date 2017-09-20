<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="RemoveBillingPlan.aspx.cs" Inherits="TBSProject.Admin.RemoveBillingPlan" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <center><asp:Label ID="Label3" Font-Size="XX-Large" Font-Underline="true" runat="server" Text="Remove Billing Plan"></asp:Label></center>
    <asp:Table runat="server"  Height="386px" Width="508px" CssClass="auto-style1">
    
    <asp:TableRow>
        <asp:TableCell >
            <asp:Label ID="Label20" runat="server" Text="Billing ID " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PlanID" DataValueField="PlanID" OnSelectedIndexChanged="RemoveBillPlan_onClick"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString7 %>" SelectCommand="SELECT [PlanID] FROM [BillingPlanMaster]"></asp:SqlDataSource>    
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label1" runat="server" Text="Plan Name " Font-Size="X-Large" ></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label2" runat="server" visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
           </asp:TableCell>
             </asp:TableRow>
         <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label23" runat="server" Text="Number Of Free Local Minutes" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label24" runat="server" visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label21" runat="server" Text="Number Of Free STD Minutes " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label22" runat="server" visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
           </asp:TableCell>
             </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label25" runat="server" Text="Cost Of Local Minute " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label26" runat="server" visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
      <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label27" runat="server" Text="Cost Of STD Minute " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label28" runat="server" visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
   <asp:TableRow>
         <asp:TableCell >
       
             
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>

     <asp:Button ID="Button2"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Confirm" OnClick="DeletePlan_onclick" Font-Size="X-Large" CssClass="auto-style2" Width="138px" />
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 256px;
            margin-top: 24px;
        }
        .auto-style2 {
            margin-left: 625px;
        }
    </style>
</asp:Content>

