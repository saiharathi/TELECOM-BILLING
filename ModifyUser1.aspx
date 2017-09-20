<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ModifyUser1.aspx.cs" Inherits="TBSProject.Admin.ModifyUser1" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
      <center> <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="ModifyUser1"></asp:Label></center>
    <asp:Table runat="server" HorizontalAlign="Center" Height="289px" Width="451px">
   
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label41" runat="server" Text="User Name" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
                <asp:Label ID="Label42" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell >
            <asp:Label ID="Label43" runat="server" Text="Enter Connection ID :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:TextBox ID="TextBox1" Font-Size="X-Large" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant Be Empty"></asp:RequiredFieldValidator>
               </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
<asp:TableRow>
         <asp:TableCell >
          
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
     <asp:Button ID="Button1" runat="server"  ForeColor="Yellow"  BackColor="Black" Text="Confirm" Font-Size="X-Large" OnClick="ConfirmUpdate_onclick" CssClass="auto-style1" Width="160px" />  
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 682px;
        }
    </style>
</asp:Content>

