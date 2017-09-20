<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="DeactivateUser.aspx.cs" Inherits="TBSProject.Admin.DeactivateUser" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <center> <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="DeactivateUser"></asp:Label></center> 
    <asp:Table runat="server" HorizontalAlign="Center" Height="414px" Width="517px">
    
     <asp:TableRow runat="server" Height="75">
        <asp:TableCell >
            <asp:Label ID="Label44" runat="server" Text="Enter User Name:" Font-Size="X-Large" horizantal-align="center"></asp:Label>
            <asp:TableCell runat="server">
                 <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="GetAcessType_onclick"></asp:DropDownList>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString21 %>" SelectCommand="SELECT [UserName] FROM [UserMaster]"></asp:SqlDataSource>   

                </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow runat="server" Height="75">
        <asp:TableCell >
            <asp:Label ID="Label45" runat="server" Text="Acess Type :" Font-Size="x-Large" horizantal-align="center"></asp:Label>
            <asp:TableCell runat="server">
                <asp:Label ID="Label46" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
         <asp:TableCell >
   
           
         </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
    

          <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Deactivate" Font-Size="X-Large" OnClick="Deactivateuser_onclick" CssClass="auto-style1" Width="115px" /> 
    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 750px;
        }
    </style>
</asp:Content>
