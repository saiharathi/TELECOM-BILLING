<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ChangePassword.aspx.cs" Inherits="TBSProject.Admin.ChangePassword" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <center> <asp:Label ID="Label3" runat="server"  Font-Size="XX-Large" Font-Underline="true"  Text="ChangePassword"></asp:Label></center> 
    <asp:Table runat="server" HorizontalAlign="Center"  Height="450px" style="margin-left: 0px" Width="590px" CssClass="auto-style1">
    
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label53" runat="server" Text="Username " Font-Size="X-Large" horizantal-align="center"></asp:Label>
            <asp:TableCell runat="server" >
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="ChangePassword_onClick"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString22 %>" SelectCommand="SELECT [UserName] FROM [UserMaster]"></asp:SqlDataSource>
                   </asp:TableCell>
           </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label54" runat="server" Text="Old Password " Font-Size="X-Large" ></asp:Label>
            <asp:TableCell runat="server" >
                <asp:Label ID="Label1" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label56" runat="server" Text="Enter New Password " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
              <asp:TextBox ID="TextBox17" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox17" runat="server" ErrorMessage="Field Is Manadatory"></asp:RequiredFieldValidator>
     
             </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label57" runat="server" Text="Confirm New Password " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server" >
              <asp:TextBox ID="TextBox18" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox18" runat="server" ErrorMessage="Field is Manadatory"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox18" ControlToCompare="TextBox17" ErrorMessage="Password and confirm password should Match"></asp:CompareValidator>
              
           </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label58" runat="server" Text="Acess Type " Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label2" runat="server" visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
         <asp:TableCell >
             
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
      <asp:Button ID="Button2"  ForeColor="Yellow"  BackColor="Black" runat="server" Font-Size="X-Large" Text="ChangePassword" OnClick="Changepassword_onclick" CssClass="auto-style2" Width="207px" />    
              
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-right: 16px;
            margin-top: 20px;
        }
        .auto-style2 {
            margin-left: 523px;
        }
    </style>
</asp:Content>

