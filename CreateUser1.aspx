<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="CreateUser1.aspx.cs" Inherits="TBSProject.Admin.CreateUser1" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center>   <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="CreateUser1"></asp:Label></center> 

    <asp:Table runat="server" HorizontalAlign="Center" Height="339px" Width="456px" CssClass="auto-style1">
   
    <asp:TableRow>
        <asp:TableCell >
            <asp:Label ID="Label33" runat="server" Text="User Name:" Font-Size="X-Large" horizantal-align="center"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label34" runat="server" Visible="false" Font-Size="X-Large"></asp:Label><br />
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label35" runat="server" Text="Enter Connection ID :" Font-Size="X-Large" horizantal-align="center"></asp:Label>
            <asp:TableCell runat="server">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant Empty"></asp:RequiredFieldValidator>
             </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
<asp:TableRow>
         <asp:TableCell  >
              
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
      <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="CreateConfirm" Font-Size="X-Large" OnClick="CreateConfirm_onclick" CssClass="auto-style2" Width="165px" />
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-top: 27px;
        }
        .auto-style2 {
            margin-left: 719px;
        }
    </style>
</asp:Content>
