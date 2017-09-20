<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Finance/Finance.Master" CodeBehind="Password.aspx.cs" Inherits="TBSProject.Finance.Password" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <asp:Table runat="server"  HorizontalAlign="Center">
        <asp:TableRow >
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="Label4" runat="server" Font-Underline="true"  horizantal-align="center" Font-Size="XX-Large" Text="Change Password"></asp:Label><br /><br />
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
          </asp:TableCell>
            <asp:TableCell>
          
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="Username_Click"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString18 %>" SelectCommand="SELECT [UserName] FROM [UserMaster]"></asp:SqlDataSource>      
            </asp:TableCell>
        </asp:TableRow>


          <asp:TableRow >
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Old Password       "></asp:Label>
                </asp:TableCell>
              <asp:TableCell>
                   <asp:TextBox ID="TextBox1"  Font-Size="X-Large"  runat="server" horizantal-align="center" TextMode="Password"></asp:TextBox><br /><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant Be Empty"></asp:RequiredFieldValidator>
              </asp:TableCell>
        </asp:TableRow >

          <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Enter New password  "></asp:Label>
            </asp:TableCell>
              <asp:TableCell>
                   <asp:TextBox ID="TextBox2"  Font-Size="X-Large"  horizantal-align="center" runat="server"   TextMode="Password"></asp:TextBox><br /><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Field Cant Be Empty"></asp:RequiredFieldValidator>
              </asp:TableCell>
         </asp:TableRow>  

        <asp:TableRow >
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Confirm New Password "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="TextBox3"  Font-Size="X-Large" horizantal-align="center" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Field Cant Be Empty"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1"  ControlToValidate="TextBox1"  ControlToCompare="TextBox2" runat="server" ErrorMessage="Password must match"></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Acces Type"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label6" Font-Size="X-Large" horizantal-align="center" runat="server" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
    <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" font-size="X-Large" Text="Confirm" CssClass="auto-style1" Width="145px" OnClick="Confirm_Cllick"  />
   
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 584px;
        }
    </style>



    





</asp:Content>