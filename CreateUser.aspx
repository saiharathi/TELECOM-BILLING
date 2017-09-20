<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="CreateUser.aspx.cs" Inherits="TBSProject.Admin.CreateUser" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <center><asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="Create User"></asp:Label></center>
    <asp:Table runat="server" HorizontalAlign="Center" Height="419px" Width="545px" CssClass="auto-style1">
   
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label29" runat="server" Text="Enter Username :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
              <asp:TextBox ID="TextBox9" runat="server" Font-Size="X-Large"></asp:TextBox><br/>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox9" runat="server" ErrorMessage="Email id not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label30" runat="server" Text="Enter Password :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
              <asp:TextBox ID="TextBox10" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox>
                </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
      <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label31" runat="server" Text="Confirm Password :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
              <asp:TextBox ID="TextBox11" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox><br/>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Enter Valid Password"></asp:CompareValidator>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
      <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label32" runat="server" Text="Enter Acess Type :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
                 <asp:DropDownList ID="DropDownList1" runat="server"  Font-Size="X-Large">
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Finance</asp:ListItem>
        <asp:ListItem>Customer</asp:ListItem>
        <asp:ListItem>BackEnd</asp:ListItem>
        </asp:DropDownList>
                
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell >
                <asp:Label ID="Label1" runat="server" Text="Status" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:DropDownList ID="DropDownList2" runat="server"  Font-Size="X-Large">
        <asp:ListItem>Active</asp:ListItem>
        <asp:ListItem>InActive</asp:ListItem>
    </asp:DropDownList>
                    
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
         <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
   
     <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Next" OnClick="CreateUserNext_onclick" Font-Size="X-Large" CssClass="auto-style2" Width="132px" /> 
        
   
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-top: 19px;
        }
        .auto-style2 {
            margin-left: 600px;
        }
    </style>
</asp:Content>

