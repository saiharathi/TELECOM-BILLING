<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ModifyUser.aspx.cs" Inherits="TBSProject.Admin.ModifyUser" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="Modify User"></asp:Label></center>

    <asp:Table runat="server" HorizontalAlign="Center" Height="533px" Width="578px" CssClass="auto-style1" >
   
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label36" runat="server" Text="Enter Username :" Font-Size="X-Large" ></asp:Label>
            <asp:TableCell runat="server" >

                <asp:DropDownList ID="DropDownList1" runat="server"  Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:DropDownList> 
         
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString4 %>" SelectCommand="SELECT [UserName] FROM [UserMaster]"></asp:SqlDataSource>
                 </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label37" runat="server" Text="Old Password :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
              <asp:TextBox ID="TextBox13" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox>
                </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label38" runat="server" Text="Enter New Password :" Font-Size="X-Large" ></asp:Label>
            <asp:TableCell runat="server">
              <asp:TextBox ID="TextBox14" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox>
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label39" runat="server" Text="Confirm New Password :" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server" >
              <asp:TextBox ID="TextBox15" TextMode="Password" runat="server" Font-Size="X-Large"></asp:TextBox><br/>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox14" ControlToValidate="TextBox15" ErrorMessage="Password Doesn't match"></asp:CompareValidator>
             </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label40" runat="server" Text="Acess Type :" Font-Size="X-Large"></asp:Label>
            <asp:TableCell runat="server">
                 <asp:DropDownList ID="DropDownList2" runat="server"  Font-Size="X-Large">
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Finance</asp:ListItem>
        <asp:ListItem>Customer</asp:ListItem>
        <asp:ListItem>BackEnd</asp:ListItem>  
                 </asp:DropDownList>
            
            </asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Status :" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
             
     <asp:DropDownList ID="DropDownList3" Font-Size="X-Large" runat="server">
        <asp:ListItem>Active</asp:ListItem>
        <asp:ListItem>InActive</asp:ListItem>
    </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
       
    <asp:TableRow>
         <asp:TableCell >
      </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
     <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black"  runat="server" Text="Next" Font-Size="X-Large" OnClick="Modifyuser_Onclick" CssClass="auto-style2" Width="134px" />
    
         
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-top: 7px;
        }
        .auto-style2 {
            margin-left: 645px;
        }
    </style>
</asp:Content>
