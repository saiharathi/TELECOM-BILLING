<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="CreateBillingPlan.aspx.cs" Inherits="TBSProject.Admin.CreateBillingPlan" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center> <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="Create Billing Plan"></asp:Label></center>  
    <asp:Table runat="server" HorizontalAlign="Center" Height="491px" Width="706px" CssClass="auto-style1">
        
    <asp:TableRow>
        <asp:TableCell>
              <asp:Label ID="Label1" runat="server" Text="Allocated Billing ID "  Font-Size="X-Large"></asp:Label>
                        </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Label ID="Label2" runat="server" horizontal-align="center" Text="Label" Visible="false" Font-Size="X-Large"></asp:Label>

            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
        <asp:TableCell>
              <asp:Label ID="Label7" runat="server" Text="PlanName " Font-Size="X-Large"></asp:Label>
             </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox5" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
            </asp:TableCell>
              
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label4" runat="server" Text="Enter Number Of Free Local Minutes " Font-Size="X-Large"></asp:Label>
             </asp:TableCell>
            <asp:TableCell runat="server" >
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large"></asp:TextBox><br />
            
                <asp:RangeValidator runat="server" Type="Integer" 
               MinimumValue ="0" MaximumValue="1000" ControlToValidate="TextBox2" 
               ErrorMessage ="Value must be whole number between 0 and 1000" />
            </asp:TableCell></asp:TableRow><asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label3" runat="server" Text="Enter Number Of Free STD Minutes " Font-Size="X-Large"> </asp:Label>
            <asp:TableCell runat="server">
            <asp:TextBox ID="TextBox1" runat="server"  horizontal-align="center" Font-Size="X-Large"></asp:TextBox><br />
      
                <asp:RangeValidator runat="server" Type="Integer" 
              MinimumValue ="0" MaximumValue="1000" ControlToValidate="TextBox1" 
               ErrorMessage ="Value must be a whole number between 0 and 1000" />
</asp:TableCell>
          </asp:TableCell></asp:TableRow><asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label5" runat="server" Text="Enter Cost Of Local Minute " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
         
            </asp:TableCell>
            </asp:TableCell></asp:TableRow><asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label6" runat="server" Text="Enter Cost Of STD Minute" Font-Size="X-Large" ></asp:Label>
            <asp:TableCell runat="server">
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Feild can't Empty"></asp:RequiredFieldValidator>
          
            </asp:TableCell>
            </asp:TableCell></asp:TableRow><asp:TableRow>
        <asp:TableCell>
              <asp:Label ID="Label8" runat="server" Text="PlanStatus " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:DropDownList ID="DropDownList1" Font-Size="X-Large" runat="server">
               <asp:ListItem>Active</asp:ListItem>
              <asp:ListItem>InActive</asp:ListItem>
    </asp:DropDownList>
            </asp:TableCell>
               </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:TableCell runat="server"><br />
            <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Create" Font-Size="X-Large" OnClick="createplan_onclick" />
       </asp:TableCell>
               </asp:TableCell></asp:TableRow></asp:Table></asp:Content><asp:Content ID="Content1" runat="server" contentplaceholderid="head"><style type="text/css">                                                                                                                                                  .auto-style1 {
                                                                                                                                                      margin-top: 18px;
                                                                                                                                                  }
                                                                                                                                              </style></asp:Content>