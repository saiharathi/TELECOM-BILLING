<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ModifyBillingPlan.aspx.cs" Inherits="TBSProject.Admin.ModifyBillingPlan" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center> <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="ModifyBillingPlan"></asp:Label></center>
   
<asp:Table runat="server" HorizontalAlign="Center" Height="529px" Width="723px" CssClass="auto-style1">
   
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label7" runat="server" Text="Billing Plan " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="PlanID" DataValueField="PlanID" OnSelectedIndexChanged="PlanDetails_onclick"></asp:DropDownList>        
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString3 %>" SelectCommand="SELECT [PlanID] FROM [BillingPlanMaster]"></asp:SqlDataSource>

                </asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label1" runat="server" Text="Plan Name " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
           </asp:TableCell>
           </asp:TableCell>
             </asp:TableRow>

        <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label8" runat="server" Text="Number Of Free Local Minutes " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label9" runat="server" Visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label10" runat="server" Text="Updated Free Local Minutes " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox5" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
               
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
         <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label11" runat="server" Text="Number Of Free STD Minutes " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label12" runat="server" Visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
           </asp:TableCell>
             </asp:TableRow>
         <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label13" runat="server" Text="Update Free STD Minutes " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
            <asp:TextBox ID="TextBox6" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox6" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
                
            </asp:TableCell>
           </asp:TableCell>
             </asp:TableRow>
         <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label14" runat="server" Text="Cost Of Local Minute " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label15" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label16" runat="server" Text="Updated Local Minute's Cost " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox2" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
                <asp:RangeValidator runat="server" Type="Integer" 
              MinimumValue ="0" MaximumValue="1000" ControlToValidate="TextBox2" 
               ErrorMessage ="Value must be a whole number between 0 and 1000" />
                </asp:TableCell>
          </asp:TableCell>
    </asp:TableRow>
                 <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label17" runat="server" Text="Cost Of STD Minute " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server"><br />
                <asp:Label ID="Label18" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label19" runat="server" Text="Updated STD Minute's Cost " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox3" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" Type="Integer" 
              MinimumValue ="0" MaximumValue="1000" ControlToValidate="TextBox3" 
               ErrorMessage ="Value must be a whole number between 0 and 1000" />
           </asp:TableCell>
            </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
         <asp:TableCell>
             
            
                
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
   
   
    <asp:Button ID="Button2"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Update" OnClick="Updateplan_onclick" Font-Size="X-Large" CssClass="auto-style2" Width="164px" />
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-top: 10px;
        }
        .auto-style2 {
            margin-left: 668px;
        }
    </style>
</asp:Content>
